#Implementación de cifrado One Time Pad en Python
import random, sys
#Función que recibe texto y devuelve una cadena binaria
def text_to_bits(text, encoding='utf-8', errors='surrogatepass'):
    bits = bin(int.from_bytes(text.encode(encoding, errors), 'big'))[2:]
    return bits.zfill(8 * ((len(bits) + 7) // 8))
#Función que recibe una cadena binaria y devuelve texto
def text_from_bits(bits, encoding='utf-8', errors='surrogatepass'):
    n = int(bits, 2)
    return n.to_bytes((n.bit_length() + 7) // 8, 'big').decode(encoding, errors) or '\0'

def gen_pad(l):
    if input("¿Desea importar un PAD? (Y/N)\nde no hacerlo se generará uno aleatoriamente: ").upper() == "Y": 
        #Importar el contenido del archivo
        archivo = open("pad.txt", "r")
        pad = archivo.read()
    else:
        print("Generando random PAD.......")
        archivo = open("pad.txt", "w")
        pad = "".join(["".join(list(map(str, ([(random.randint(0, 1)) 
            for i in range(8)])))) for i in range(l)])
        #Guardar el pad en el archivo
        archivo.write(pad)
    archivo.close()
    return pad

def method(text, en = "-e", pad = None):
    #Parámetros de inicialización
    if pad == None: pad = gen_pad(len(text))
    if en == "-e": 
        text = text_to_bits(text)
        print("ENCRIPTANDO.......")
    else: print("DECRIPTANDO.......")
    if len(pad) != len(text): return None
    #Imprime el PAD y el TEXTO, ambos en binario
    print("PAD:  {}".format(pad))
    print("TEXT: {}".format(text))
    #Genera una cadena binaria usando XOR entre el PAD y el TEXT
    res = "".join([("0" if text[i] == pad[i] else "1") for i in range(len(text))])
    #Devuelve binario al encriptar, texto al desencriptar
    return res if en == "-e" else text_from_bits(res)

def main():
    if len(sys.argv) == 3:
        print("RES:  {}".format(method(sys.argv[2], sys.argv[1])))
    elif len(sys.argv) == 4:
        print("RES:  {}".format(method(sys.argv[2], sys.argv[1], sys.argv[3])))
    else: "Verifica tus datos"

main()

#INSTRUCCIONES DE EJECUCIÓN
#Para encriptar:  python c05_otp.py -e plaintext  PAD(opcional)
#Para descriptar: python c05_otp.py -d cyphertext PAD