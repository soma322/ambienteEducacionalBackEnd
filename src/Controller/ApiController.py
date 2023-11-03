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

def login(json: dict):
    #TODO verificar los datos del json
    return model.login(json)

def preguntas(materia: int,nivel: int):

    return model.preguntas(materia,nivel)


def materias():
    return model.materias()

def nivelMateria(idusuario: int,idmateria:int):
    return model.nivelMateria(idusuario,idmateria)