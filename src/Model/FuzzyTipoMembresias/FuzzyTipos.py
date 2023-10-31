import skfuzzy as fuzz
def FuzzyTipo(ConAntParametros,tipo,rango1,rango2,rango3,rango4):
    response = None
    match tipo:
        case "trimf":
            response = fuzz.trimf(ConAntParametros.universe,[rango1,rango3,rango4])
        case "trapmf":
            response = fuzz.trapmf(ConAntParametros.universe,[rango1,rango2,rango3,rango4])
        case "gbellmf":
            response = fuzz.gbellmf(ConAntParametros.universe,[rango1,rango3,rango4])
        case "gaussmf":
            response = fuzz.gaussmf(ConAntParametros.universe,[rango1,rango4])
        case "gauss2mf":
            response = fuzz.gauss2mf(ConAntParametros.universe,[rango1,rango2,rango3,rango4])
        case "sigmf":
            response = fuzz.sigmf(ConAntParametros.universe,[rango1,rango4])
        case "dsigmf":
            response = fuzz.dsigmf(ConAntParametros.universe,[rango1,rango2,rango3,rango4])
        case "psigmf":
            response = fuzz.psigmf(ConAntParametros.universe,[rango1,rango2,rango3,rango4])
        case "pimf":
            response = fuzz.pimf(ConAntParametros.universe,[rango1,rango3,rango4])
        case "smf":
            response = fuzz.smf(ConAntParametros.universe,[rango1,rango4])
        case "zmf":
            response = fuzz.zmf(ConAntParametros.universe,[rango1,rango4])
        case _:
            response = fuzz.trimf(ConAntParametros.universe,[rango1,rango3,rango4])

    return response