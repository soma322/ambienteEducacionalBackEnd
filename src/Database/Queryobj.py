class FuzzyConsequence:
    def __init__(self, id, nombre, rangomin, rangomax, incremental):
        self.idu = id
        self.nombre = nombre
        self.rangomin = rangomin
        self.rangomax = rangomax
        self.incremental = incremental

class FuzzyAntecentes:
    def __init__(self, id, nombre, rangomin, rangomax, incremental):
        self.idu = id
        self.nombre = nombre
        self.rangomin = rangomin
        self.rangomax = rangomax
        self.incremental = incremental

class FuzzyMembresia:
    def __init__(self, id, nombre, rangomin, rangomax, rangofinal):
        self.idu = id
        self.nombre = nombre
        self.rangomin = rangomin
        self.rangomax = rangomax
        self.rangofinal = rangofinal

class FuzzyReglas:
    def __init__(self,condiciones,consecuencia):
        self.condiciones = condiciones
        self.consecuencia = consecuencia