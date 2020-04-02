def encrypt(text, n, key):
    if len(text)%n != 0: text += "X" * (n - len(text) % n)
    base_arr = [text[i::n].upper() for i in range(n)]
    return "".join([base_arr[int(key[i])-1] for i in range(n)])

def decrypt(text, n, key):
    text = [text[i*int(len(text)/n):int(len(text)/n)*(i+1)] for i in range(n)]
    text = "".join([i for _,i in sorted(zip(list(map(int, key)),text))])
    return "".join([text[i::int(len(text)/n)].upper() for i in range(int(len(text)/n))])

def main(crypt, text, rows, key, times):
    if len(key) != rows: return None
    if crypt: 
        for _ in range(times):
            text = encrypt(text, rows, key)
    else:
        for _ in range(times):
            text = decrypt(text, rows, key)
    return text

def service():
    print("PROGRAMA CÓDIGO C05_MATRIX")
    while True:
        arr = []
        while True:
            y = input("¿QUÉ DESEA HACER? \n  1. ENCRIPTAR\n  2. DESENCRIPTAR\n\n")
            if y == "1": 
                arr.append(True)
                break
            elif y == "2": 
                arr.append(False)
                break
            else:
                print("Valor incorrecto, pruebe otra vez")
        arr.append(input("INSERTE EL TEXTO: \n\n"))
        arr.append(int(input("CANTIDAD DE COLUMNAS: ")))
        arr.append(input("INSERTE LA LLAVE (Ej: 12345) \n NOTA: LOS DÍGITOS DE LA LLAVE DEBEN SER MENORES AL # DE COLUMNAS:\n "))
        arr.append(int(input("¿CUÁNTAS VECES? ")))
            
        print(main(arr[0], arr[1], arr[2], arr[3], arr[4]))

        if input("¿DESEA CONTINUAR? Y/N: ").upper() != "Y": break

service()