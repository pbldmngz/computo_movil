import sys

def encrypt(text, n, key):
    ord_key = temp(key)
    if len(text)%n != 0: text += "X" * (n - len(text) % n) #Rellena lo que le falta para completar la matriz
    base_arr = [text[i::n].upper() for i in range(n)] #Invierte filas y columnas
    return "".join([base_arr[int(ord_key[i])] for i in range(n)]) # Reordena las columnas en el orden que da la llave

def decrypt(text, n, key):
    ord_key = temp(key)
    text = [text[i*int(len(text)/n):int(len(text)/n)*(i+1)] for i in range(n)] #Convierte el texto a matrix
    #En base a la llave se hacen tuplas de el número real de la columna y su contenido
    #Que proceden a ser ordenadas y unidas en texto
    text = "".join([i for _,i in sorted(zip(list(map(int, ord_key)),text))]) 
    return "".join([text[i::int(len(text)/n)].upper() for i in range(int(len(text)/n))]) #Se invierten "filas y columnas"

def temp(key): #Cambia la llave por su equivalente en orden alfabético, ej: cba = 210
    ord_key = sorted(key)
    return "".join([str(ord_key.index(key[i])) for i in range(len(key))])

def texto_valido(text):
    for t in text:
        text = text[1:] #Va eliminando el primer caracter a cada ronda
        if t in text: #Verifica si está repetido en el texto
            return False
    return True

#Esto es para correrlo desde consola, "python c_matrix.py texto llave 0encripta-1decripta", si la llave es válida
if texto_valido(sys.argv[2]):
    print(encrypt(sys.argv[1], len(sys.argv[2]), sys.argv[2]) if sys.argv[3] == "0" else decrypt(sys.argv[1], len(sys.argv[2]), sys.argv[2]))
else: print("La llave no es válida")