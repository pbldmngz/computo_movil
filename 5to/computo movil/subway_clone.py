from colorama import init
init()
ingred = []
catalogo = []
pedidos = []
class Basic: #Clase principal (se crea el model de sandwich)
    name = ""
    base_cost = 0
    def __init__(self, n, b):
        self.name = n
        self.base_cost = b


class Product(Basic): #Clase derivada (estos son los pedidos en particular, aquí se añaden ingredientes extra)
    ingredients = []
    def __init__(self, n, b, i):
        super().__init__(n, b)
        self.ingredients = self.i_validator(i)
        
    def total_cost(self):
        val = int(self.base_cost)
        for i in self.ingredients:
            val += int(i.base_cost)
        return val
        
    def i_validator(self, st): #validar ingredientes dados, si no encuentra alguno, debe mandar error
        st = st.split(", ")
        ar = []
        count = 0
        for i in st:
            vl = False
            for j in ingred:
                if i == j.name: 
                    vl = True
                    ar.append(j)
                    count += 1
                    break
        return ar if count == len(st) else None
    
    def toString(self):
        text = self.name + " , ingredients: "
        for i in self.ingredients:
            text += i.name + ", "
        text = text [:-2]
        return text


class Ingredient(Basic):
    peso = 0
    def __init__(self, n, b, p):
        super().__init__(n, b)
        self.peso = p


def create_ing(): # Creador de ingredientes
    arr = []
    #inp = ""
    #verificator = True
    while True:
        print("\033[;36m"+"Creating new ingredient, insert name:"+'\033[0;m')
        arr.append(input().casefold())
        while True:
            print("\033[;36m"+"insert cost:"+'\033[0;m')
            try: 
                arr.append(int(input()))
                break
            except: 
                print("\033[;31m"+"precio incorrecto"+'\033[0;m')
                continue
        ingred.append(Ingredient(arr[0], arr[1], 100))
        arr = []
        print("CONTINUE? Y/N")
        if input().casefold() == "n": 
            break
    print("Product/s added")
    
    for s in ingred:
        print(s.name)
    
def create_sw(): #Método para la creación de sw
    arr = []
    while True:
        print("\033[;36m"+"Creating new sandwich, insert name:"+'\033[0;m')
        arr.append(input().casefold())
        while True:
            print("\033[;36m"+"insert base cost:"+'\033[0;m')
            try: 
                arr.append(int(input()))
                break
            except: 
                print("\033[;31m"+"precio incorrecto"+'\033[0;m')
                continue
        
        catalogo.append(Basic(arr[0], arr[1]))
        arr = []
        print("\033[;36m"+"CONTINUE? Y/N"+'\033[0;m')
        if input().casefold() == "n":
            break
    print("\033[;36m"+"Product/s added"+'\033[0;m')
    for s in catalogo:
        print(s.name)

def auto_create():
    #Generar ingredientes
    ingred.append(Ingredient("jamon", 50, 100))
    ingred.append(Ingredient("tocino", 90, 100))
    ingred.append(Ingredient("aguacate", 15, 100))
    #Generar sandwiches
    catalogo.append(Basic("mexican", 250))
    catalogo.append(Basic("american", 250))
    catalogo.append(Basic("italian", 250))

def selector():
    auto_create()
    print("\033[;36m"+"Añadir ingrediente: A, Añadir Sandwich: B, Modo cajero: C")
    while True:
        val = input("\n¿Qué desea hacer?\n").casefold()
        print('\033[0;m')
        if val == "a": 
            create_ing()
            break
        elif val == "b": 
            create_sw()
            break
        elif val == "c": 
            start()
            break
        else: print(val, " no es una opción válida, vuelva a intentarlo")

def start(): #Método de inicio rápido
    print("\033[;36m"+"¡BIENVENIDO A SUNWAY! ¿QUÉ DESEA ORDENAR?\n")
    print("CATÁLOGO:"+'\033[0;m')
    for i in catalogo:
        print(" - ", i.name.upper())
    print("INGREDIENTES:"+'\033[0;m')
    for i in ingred:
        print(" - ", i.name.upper())
    main()
    
def pedido(): #Creación de un product
    arr = []
    valt = False
    while True:
        print("\033[;36m"+"Bienvenido, qué tipo de sandwich desea?"+'\033[0;m')
        arr.append(input().casefold())
        
        for i in catalogo:
            if arr[0] == i.name:
                valt = True
                arr.append(i)
                break
            
        if valt == True: break
        else: 
            print("\033[;31m"+"Nombre no registrado, intente otra vez"+'\033[0;m')
            arr = []
    
    while True:   
        print("\033[1;33m"+"Qué ingredientes desea? #Ingrediente, ingrediente, ingrediente#"+'\033[0;m')
        arr.insert(2, input().casefold())
        pedidos.append(Product(arr[1].name, arr[1].base_cost, arr[2]))
        if pedidos[len(pedidos)-1].ingredients == None: 
            print("\033[;31m"+"Ingredientes no disponibles, por favor, intente de nuevo"+'\033[0;m')
            del pedidos[len(pedidos)-1]
        else: break

def main(): #Ciclo de pedidos
    print("Creando nuevo pedido")
    while True:
        pedido()
        print("\033[;36m"+"Pedido completado: ", pedidos[len(pedidos)-1].toString()+'\033[0;m')
        print("\033[4;35m"+"Serán $", pedidos[len(pedidos)-1].total_cost())
        print("\033[;36m"+"Desea continuar? Y/N"+'\033[0;m')
        if input() == "N":
            break

selector()