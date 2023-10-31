import json
from src.Database import Conexiones as con
from src.Database import Queryobj as obj
from src.Model.FuzzyReglas import Reglas  as reglas
import numpy as np
import skfuzzy as fuzz
from skfuzzy import control as ctrl
from src.Model.FuzzyTipoMembresias import FuzzyTipos  as tipos

def FuzzyConsecuencias(json):
    cur = con.conexion()
    response = {}
    consecuencia = {}
    query = "SELECT id, nombre, rangomin , rangomax , incremental  FROM ctl_fuzzyconsecuencias where nombre ilike %s and activo = true"
    cur.execute(query,(json.get("consecuencia"),))
    res = cur.fetchall()
    
    tip = obj.FuzzyConsequence(res[0][0], res[0][1], res[0][2], res[0][3], res[0][4])
    
    x_tip = np.arange(tip.rangomin, tip.rangomax,tip.incremental)
    tipConsequent = ctrl.Consequent(x_tip,tip.nombre)
    consecuencia[tip.nombre] = FuzzyMembresias(1,tip,tipConsequent)
    response['datosconsecuencia'] = tip
    response['consecuencia'] = consecuencia
    cur.close()
    return response

def FuzzyAntecedentes(consecuenciaDatos):
    cur = con.conexion()
    antecedentesList = []
    response = None
    antecentesObj = {}
    query = "SELECT id, nombre, rangomin ,rangomax ,incremental  FROM ctl_fuzzyantecedentes WHERE consecuencia =%s and activo = true ORDER by id"
    cur.execute(query, (consecuenciaDatos.idu,))
    res = cur.fetchall()

    for ante in res:
        antecedentesList.append(obj.FuzzyAntecentes(ante[0],ante[1],ante[2],ante[3],ante[4]))

    for ante in antecedentesList:
        x_arange = np.arange(ante.rangomin, ante.rangomax, ante.incremental)
        antecedent = ctrl.Antecedent(x_arange, ante.nombre)
        antecentesObj[ante.nombre] = FuzzyMembresias(2,ante,antecedent)
    cur.close()
    return antecentesObj

def FuzzyMembresias(tipo, queryParametros,ConAntParametros):
    cur = con.conexion()
    response = {}
    if(tipo == 1):
        query = "SELECT mem.nombre, mem.rango1,mem.rango2,  mem.rango3, mem.rango4 ,tip.nombre as tipo  FROM ctl_fuzzymembresia mem INNER JOIN cat_tipos_membresias tip ON tip.id = mem.tipo WHERE mem.consecuencia =%s and mem.activo = true ORDER by mem.id"
    else:
        query = "SELECT mem.nombre, mem.rango1,mem.rango2,  mem.rango3, mem.rango4 ,tip.nombre as tipo  FROM ctl_fuzzymembresia mem INNER JOIN cat_tipos_membresias tip ON tip.id = mem.tipo WHERE mem.antecedente =%s and mem.activo = true ORDER by mem.id"
    
    cur.execute(query, (queryParametros.idu,))
    res = cur.fetchall()
    for mem in res:
        #ConAntParametros[mem[1]] = fuzz.trimf(ConAntParametros.universe,[mem[2],mem[3],mem[4]])
       ConAntParametros[mem[0]] = tipos.FuzzyTipo(ConAntParametros,mem[5],mem[1],mem[2],mem[3],mem[4])
    
    cur.close()
   
    return ConAntParametros

def FuzzyReglas(queryParametros,consecuencia,antecedentes):
    reglasLista = []
    cur = con.conexion()
    query = "SELECT condiciones, consecuencia FROM cat_fuzzyrules WHERE consecuenta_id =%s and activo = true ORDER by id"
    cur.execute(query, (queryParametros.idu,))
    res = cur.fetchall()

    for rules in res:
        reglasLista.append(reglas.FuzzyRegla(rules[0],rules[1]))
    fuzzy_rule_list = reglas.create_fuzzy_rule_list(consecuencia,antecedentes,reglasLista)

    tipping_ctrl = ctrl.ControlSystem(fuzzy_rule_list)
    return tipping_ctrl

def FuzzyOutPut(json,ControlSystem):
    output = None
    simulacion = ctrl.ControlSystemSimulation(ControlSystem)
    for para in json.get('input'):
        simulacion.input[para.get('nombre')] = para.get('valor')

    simulacion.compute()
    output = simulacion.output[json.get('consecuencia')]
    return output