def FuzzyTipo(ConAntParametros,tipo,rangomin ,rangomax ,rangofinal):
    response = None
    match tipo:
        case "trimf":
            response = fuzz.trimf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "trapmf":
            response = fuzz.trapmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "gbellmf":
            response = fuzz.gbellmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "gaussmf":
            response = fuzz.gaussmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "gauss2mf":
            response = fuzz.gauss2mf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "sigmf":
            response = fuzz.sigmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "dsigmf":
            response = fuzz.dsigmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "psigmf":
            response = fuzz.psigmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "pimf":
            response = fuzz.pimf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "smf":
            response = fuzz.smf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case "zmf":
            response = fuzz.zmf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])
        case _:
            response = fuzz.trimf(ConAntParametros.universe,[rangomin,rangomax,rangofinal])

    return response