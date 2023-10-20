import numpy as np
from skfuzzy import control as ctrl

class FuzzyRegla:
    def __init__(self, condiciones, consecuencia):
        self.condiciones = condiciones
        self.consecuencia = consecuencia

def string_to_list(string):
    list = []
    for word in string.split(" "):
        list.append(word)
    return list

def create_fuzzy_rule_list(reglas_lista):
    fuzzy_rule_list = []
    for regla in reglas_lista:
        antecedent_list = string_to_list(regla.condiciones)
        consequent_list = string_to_list(regla.consecuencia)

        antecedent = np.array(antecedent_list)
        consequent = np.array(consequent_list)
        print(antecedent)
        fuzzy_rule = ctrl.Rule(antecedent, consequent)
        fuzzy_rule_list.append(fuzzy_rule)
    return fuzzy_rule_list
