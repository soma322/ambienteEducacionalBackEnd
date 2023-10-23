import src.Model.ApiModel as model

def FuzzyEngine(json: dict):
    #verificar los datos del json
    response = None
    consecuencia = model.FuzzyConsecuencias(json)
    consecuenciaDatos = consecuencia['datosconsecuencia']
    consecuencia =  consecuencia['consecuencia']
    antecedentes = model.FuzzyAntecedentes(consecuenciaDatos)

    reglas = model.FuzzyReglas(consecuenciaDatos,consecuencia,antecedentes)
    response = model.FuzzyOutPut(json,reglas)

    return response