import json
from src.Database import Conexiones as con
from src.Database import Queryobj as obj
from src.Model.FuzzyReglas import Reglas  as reglas
import numpy as np
import skfuzzy as fuzz
from skfuzzy import control as ctrl
from src.Model.FuzzyTipoMembresias import FuzzyTipos  as tipos
import random
import math
def FuzzyConsecuencias(json):
    cur,connection = con.conexion()
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
    cur,connection = con.conexion()
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
    cur,connection = con.conexion()
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
    cur,connection = con.conexion()
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
    return math.floor(output)


def login(json):
    response = {}
    
    cur,connection = con.conexion()
    query = "SELECT nombre,apellido_paterno,apellido_materno,descripcion, rol, privilegio,idu FROM fun_consultaloginadmin(%s,%s)"
    cur.execute(query, (json.get('usuario'), json.get('contrasena'),))
    res = cur.fetchall()

    for user in res:
        response['nombre']           = user[0]
        response['apellido_paterno'] = user[1]
        response['apellido_materno'] = user[2]
        response['descripcion']      = user[3]
        response['rol']              = user[4]
        response['privilegio']       = user[5]
        response['id']               = user[6]

    return response

def preguntas(materia,nivel):
    response = {'preguntas': []} 
    preguntasArray = []
    indexCorrecta = 1
    cur,connection = con.conexion()
    query = """select a.nivel,a.pregunta,b.respuesta,b.incorrecta1, b.incorrecta2, b.incorrecta3 , c.ayuda
                from cat_preguntas a 
                inner join cat_respuestas b on a.id=b.id_pregunta 
                inner join cat_ayuda c on a.id=c.pregunta_id 
                WHERE a.id_materia=%s  AND a.nivel BETWEEN 1 AND %s ORDER BY RANDOM() LIMIT 1"""
    cur.execute(query, (materia,nivel,))
    res = cur.fetchall()
    
    for preg in res:
        preguntasArray = [
                {'correcto':'true','res':preg[2]},
                {'correcto':'false','res':preg[3]},
                {'correcto':'false','res':preg[4]},
                {'correcto':'false','res':preg[5]}
                ]
        random.shuffle(preguntasArray)
        for correcta in preguntasArray:
            if(correcta['correcto'] == 'true'):
                break
            indexCorrecta = indexCorrecta + 1
        pregunta = {
            'nivel': preg[0],
            'pregunta': preg[1],
            'respuestas': preguntasArray,
            'ayuda': preg[6],
            'correcta': indexCorrecta
        }

        response['preguntas'] = pregunta
        
    
   
    return response

def materias():
    response = {'response': []} 
    cur,connection = con.conexion()
    queryArray = []
    query = "SELECT idu,upper(des_materia) FROM cat_materias where activo = true"
    cur.execute(query)
    res = cur.fetchall()

    for mat in res:
        queryArray = {'id': mat[0],'nombre': mat[1]}

        response['response'].append(queryArray)

    return response

def nivelMateria(idusuario: int,idmateria:int):
    response = {'response': []} 
    cur,connection = con.conexion()
    queryArray = []
    query = "SELECT nivel FROM ctl_materias where idu_alumno =%s AND idu_materia = %s"
    cur.execute(query,(idusuario,idmateria),)
    res = cur.fetchall()

    for mat in res:
        queryArray = {'nivel': mat[0]}

        response['response'].append(queryArray)

    if(len(response['response']) == 0):
        response['response'].append({'nivel': 1})
    return response

def guardarnivel(json: dict):
    response = { } 
    cur,connection = con.conexion()
    queryArray = []
    query = "SELECT count(1) as contador FROM ctl_materias where idu_alumno =%s AND idu_materia = %s"
    cur.execute(query,(json.get('idusuario'),json.get('materia')),)
    contador = cur.rowcount
   
    print(json)
    if(contador > 0):
        query = "UPDATE ctl_materias SET nivel=%s, fecha_modificacion=NOW() WHERE idu_alumno=%s AND idu_materia=%s"
        values = (json.get('nivel'), json.get('idusuario'), json.get('materia'))
        cur.execute(query, values)
        con.commit(connection)
        affected_rows = cur.rowcount
        print(affected_rows)

    if(contador == 0):
        query = "insert into ctl_materias (nivel,idu_alumno,idu_materia) values (%s,%s,%s)"
        cur.execute(query,(json.get('nivel'),json.get('idusuario'),json.get('materia')),)
        con.commit(connection)
        affected_rows = cur.rowcount
        


    
    response['response'] = affected_rows
    return response

