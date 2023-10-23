import numpy as np
from skfuzzy import control as ctrl
import skfuzzy as fuzz
import functools

class FuzzyRegla:
    def __init__(self, condiciones, consecuencia):
        self.condiciones = condiciones
        self.consecuencia = consecuencia

def string_to_list(string):
    list = []
    for word in string.split(" "):
        list.append(word)
    return list
def create_fuzzy_rule_list(consecuencia, antecedente, reglas_lista):
    arrayReglas = []
    for regla in reglas_lista:
        index = 0
        regla1 = 0
        arrayCondiciones = []
        arrayAndOr = []
       
        antecedent_list = string_to_list(regla.condiciones)
        
        for condicion in antecedent_list: 
            if(index == 2):
                arrayAndOr.append(condicion)
                index = 0
                continue
            arrayCondiciones.append(condicion)
            index = index+1
       
        arrayCondiciones = [arrayCondiciones[i:i+2] for i in range(0, len(arrayCondiciones), 2)]
           
        index = 0
        for condicion in arrayCondiciones:
            
            if(regla1 == 0):
                regla1 = antecedente[condicion[0]][condicion[1]]
                continue
            if(arrayAndOr[index] == '|'):
                regla1 = regla1 | antecedente[condicion[0]][condicion[1]]
            elif(arrayAndOr[index] == '&'):
                regla1 = regla1 & antecedente[condicion[0]][condicion[1]]
            index = index + 1    

        
       
        consequent_list = string_to_list(regla.consecuencia)
        arrayReglas.append( ctrl.Rule(regla1, consecuencia[consequent_list[0]][consequent_list[1]]))
        

    return arrayReglas 
