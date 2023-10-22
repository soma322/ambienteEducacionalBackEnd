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
    fuzzy_rule_list = []
    index = 0
    arrayCondiciones = []
    arrayAndOr = []
    regla1 = 0
    arrayReglas = []
    
    for regla in reglas_lista:
        
        antecedent_list = string_to_list(regla.condiciones)
        print(antecedent_list)
        for condicion in antecedent_list:
            
            if(index == 2):
                arrayAndOr.append(condicion)
                index = 0
                continue
            arrayCondiciones.append(condicion)
            index = index+1

        #print(arrayCondiciones)
        arrayCondiciones = [arrayCondiciones[i:i+2] for i in range(0, len(arrayCondiciones), 2)]
           # rule = rule."".condicion
        #print(arrayCondiciones)
        for puerta in arrayAndOr:
            for condicion in arrayCondiciones:
                #print(condicion)
                if(regla1 == 0):
                    regla1 = antecedente[condicion[0]][condicion[1]]
                    continue
                if(puerta == '|'):
                    regla1 |= antecedente[condicion[0]][condicion[1]]
                elif(puerta == '&'):
                    regla1 &= antecedente[condicion[0]][condicion[1]]
                
                #print(regla1)
        
        index = 0
        consequent_list = string_to_list(regla.consecuencia)
        #print(consecuencia[consequent_list[0]][consequent_list[1]])
       
        for condicion in arrayCondiciones:
            arrayReglas.append( ctrl.Rule(regla1, consecuencia[consequent_list[0]][consequent_list[1]]))

    return arrayReglas
