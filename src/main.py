import sys
from typing import Union
from fastapi import FastAPI
import numpy as np
import skfuzzy as fuzz
import os
from skfuzzy import control as ctrl


from src.Database import Conexiones as con
from src.Database import Queryobj as obj
from src.Model.FuzzyReglas    import Reglas  as reglas

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hey!": "Hello Kixe <3, please send me your credit card information"}

@app.get("/conexion")
def conexion():
    cur = con.conexion()
    cur.execute("SELECT segundos,activo FROM tiempo")
    rows = cur.fetchall()
    colnames = [desc[0] for desc in cur.description]
    return rows
@app.get("/tipping/{quality}/{service}")
def tipping(quality: int,service: int):
    antecedentesList = []
    index = 0
    query = ""
    cur = con.conexion()
    query = "SELECT id, nombre, rangomin, rangomax, incremental FROM ctl_fuzzyconsecuencias where nombre ilike 'tip' and activo = true"
    cur.execute(query)
    res = cur.fetchall()
    tip = obj.FuzzyConsequence(res[0][0], res[0][1], res[0][2], res[0][3], res[0][4])
    
    x_tip = np.arange(tip.rangomin, tip.rangomax,tip.incremental)
    tipConsequent = ctrl.Consequent(x_tip,tip.nombre)
    
   
    
    query = "SELECT id, nombre, rangomin,rangomax,incremental FROM ctl_fuzzyantecedentes WHERE consecuencia =%s and activo = true ORDER by id"
    cur.execute(query, (tip.idu,))
    res = cur.fetchall()


    for ante in res:
        antecedentesList.append(obj.FuzzyAntecentes(ante[0],ante[1],ante[2],ante[3],ante[4]))
       
   
    antecedents = []
    for ante in antecedentesList:
        x_arange = np.arange(ante.rangomin, ante.rangomax, ante.incremental)
        
        antecedent = ctrl.Antecedent(list(x_arange), ante.nombre)
        print(antecedent)
        antecedents.append(antecedent)

    reglasLista = []
    rulesLista = []
    query = "SELECT condiciones, consecuencia FROM cat_fuzzyrules WHERE consecuenta_id =%s and activo = true ORDER by id"
    cur.execute(query, (tip.idu,))
    res = cur.fetchall()

    for rules in res:
        print(rules[0])
        reglasLista.append(reglas.FuzzyRegla(rules[0],rules[1]))

    fuzzy_rule_list = reglas.create_fuzzy_rule_list(reglasLista)
    #for rules in reglasLista:
    #    print(rules.condiciones)
    #    print(rules.consecuencia) 
    #    rulesLista.append(ctrl.Rule(rules.condiciones, rules.consecuencia))

    #rule1 = ctrl.Rule(quality['poor'] | service['poor'], tip['low'])
    #rule2 = ctrl.Rule(service['average'], tip['medium'])
    #rule3 = ctrl.Rule(service['good'] | quality['good'], tip['high'])

    # Create a control system
    #tipping_ctrl = ctrl.ControlSystem([rule1, rule2, rule3])

    tipping_ctrl = ctrl.ControlSystem(fuzzy_rule_list)

    # Create a simulation
    tipping = ctrl.ControlSystemSimulation(tipping_ctrl)

    tipping.input['calidad'] = quality
    tipping.input['servicio'] = service

    tipping.compute()

    # Access the output
    
    return tipping.output['tip']


    
    

@app.get("/fuzzy")
def check_fuzzy():
    # Define universe variables
    x_quality = np.arange(0, 11, 1)
    x_service = np.arange(0, 11, 1)
    x_tip = np.arange(0, 26, 1)

    # Create antecedent and consequent objects
    quality = ctrl.Antecedent(x_quality, 'quality')
    # Define membership functions for 'quality'
    quality['poor'] = fuzz.trimf(quality.universe, [0, 0, 5])
    quality['average'] = fuzz.trimf(quality.universe, [0, 5, 10])
    quality['good'] = fuzz.trimf(quality.universe, [5, 10, 10])

    service = ctrl.Antecedent(x_service, 'service')
    # Define membership functions for 'service'
    service['poor'] = fuzz.trimf(service.universe, [0, 0, 5])
    service['average'] = fuzz.trimf(service.universe, [0, 5, 10])
    service['good'] = fuzz.trimf(service.universe, [5, 10, 10])


    tip = ctrl.Consequent(x_tip, 'tip')
     # Define membership functions for 'tip' (consequent)
    tip['low'] = fuzz.trimf(tip.universe, [0, 0, 5])
    tip['medium'] = fuzz.trimf(tip.universe, [0, 5, 10])
    tip['high'] = fuzz.trimf(tip.universe, [5, 10, 10])

    

    

   

    # Define fuzzy rules
    rule1 = ctrl.Rule(quality['poor'] | service['poor'], tip['low'])
    rule2 = ctrl.Rule(service['average'], tip['medium'])
    rule3 = ctrl.Rule(service['good'] | quality['good'], tip['high'])

    # Create a control system
    tipping_ctrl = ctrl.ControlSystem([rule1, rule2, rule3])

    # Create a simulation
    tipping = ctrl.ControlSystemSimulation(tipping_ctrl)

    # Input values
    tipping.input['quality'] = 6.5
    tipping.input['service'] = 9.8

    # Compute the output
    tipping.compute()

    # Access the output
    
    return tipping.output['tip']


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}