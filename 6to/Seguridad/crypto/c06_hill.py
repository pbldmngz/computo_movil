import textwrap
alpha = {'A': 0, 'B': 1, 'C': 2, 'D': 3, 'E': 4, 'F': 5, 'G': 6, 'H': 7, 'I': 8, 'J': 9, 'K': 10, 'L': 11, 'M': 12, 'N': 13, 'O': 14, 'P': 15, 'Q': 16, 'R': 17, 'S': 18, 'T': 19, 'U': 20, 'V': 21, 'W': 22, 'X': 23, 'Y': 24, 'Z': 25}
anti = {value:key for key, value in alpha.items()}

# Comodidades de mapping
def toDec(s): return alpha[s]
def toStr(d): return anti[d]
def toMod(d): return d%26

# Dar formato
def string_frac(s): 
    if len(s)%3 != 0: s += "X"*(3 - len(s)%3)
    return [list(map(toDec, list(i)))for i in textwrap.wrap(s.upper(), 3)]

def vector(m): return [[m[0], 0, 0], [m[1], 0, 0], [m[2], 0, 0]]
def anti_vector(m): return [m[0][0], m[1][0], m[2][0]]

# Matemáticas hijo
def mult(x, y): return [[sum(a*b for a,b in zip(Xo,Yo)) for Yo in zip(*y)] for Xo in x]
def trans_3x3(m): return [[m[j][i] for j in range(len(m))] for i in range(len(m[0]))]
def det_2x2(m): return m[0][0]*m[1][1] - m[0][1]*m[1][0]

def mult_inv_det(x):
    for i in range(26):
        if (i*x)%26 == 1: return i

def det_3x3(m):
    return (m[0][0] * (m[1][1] * m[2][2] - m[2][1] * m[1][2]) - m[1][0] * (m[0][1] * m[2][2] - m[2][1] * m[0][2])
           + m[2][0] * (m[0][1] * m[1][2] - m[1][1] * m[0][2]))

def inv_3x3(m):
    res = [3*[None] for _i in range(3)]
    for i in range(3):
        for j in range(3):
            s = 1 if (i+j)%2 == 0 else -1
            h = [[n for a, n in enumerate(f) if a != i] for b, f in enumerate(m) if b != j]
            res[i][j] = s*det_2x2(h)
    return res

# Algoritmo de Hill
def encrypt(key, text): return "".join(["".join(list(map(toStr, 
    list(map(toMod, anti_vector(mult(key, vector(t)))))))) for t in string_frac(text)])

def decrypt(key, text):
    z = mult_inv_det(toMod(det_3x3(key)))
    if z == None: return "ERROR: NO SE HALLÓ EL DETERMINANTE INVERSO \n- La clave resultó inválida -"
    key = [[toMod(j*z) for j in i] for i in inv_3x3(key)]
    return "".join(["".join(list(map(toStr, list(map(toMod, anti_vector(mult(key, 
    vector(t)))))))) for t in string_frac(text)])

# Service
while True:
    key = string_frac(input("Introduzca la llave: "))
    text = input("Inserte texto: ")
    print(encrypt(key, text)) if int(input("Escriba 1 para encriptar, 2 para desencriptar: ")) == 1 else print(decrypt(key, text))
    if input("C para continuar, cualquier otra para salir: ").upper() != "C": break