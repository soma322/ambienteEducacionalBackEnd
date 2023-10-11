import sys
from typing import Union
from fastapi import FastAPI
import numpy as np
import skfuzzy as fuzz
import os
from skfuzzy import control as ctrl

from src.database import Conexiones as con
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

@app.get("/fuzzy")
def check_fuzzy():
    # Define universe variables
    x_quality = np.arange(0, 11, 1)
    x_service = np.arange(0, 11, 1)
    x_tip = np.arange(0, 26, 1)

    # Create antecedent and consequent objects
    quality = ctrl.Antecedent(x_quality, 'quality')
    service = ctrl.Antecedent(x_service, 'service')
    tip = ctrl.Consequent(x_tip, 'tip')

    # Define membership functions for 'quality'
    quality['poor'] = fuzz.trimf(quality.universe, [0, 0, 5])
    quality['average'] = fuzz.trimf(quality.universe, [0, 5, 10])
    quality['good'] = fuzz.trimf(quality.universe, [5, 10, 10])

    # Define membership functions for 'service'
    service['poor'] = fuzz.trimf(service.universe, [0, 0, 5])
    service['average'] = fuzz.trimf(service.universe, [0, 5, 10])
    service['good'] = fuzz.trimf(service.universe, [5, 10, 10])

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