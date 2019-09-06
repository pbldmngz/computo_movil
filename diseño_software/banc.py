g_trans = {}

def bank(queue): ##Arrays of clients
    pr_cli = []
    go_cli = []
    no_cli = []
    
    for client in len(queue):
       if client.level == "premium": pr_cli.append(client)
       elif client.level == "gold": go_cli.append(client)
       elif client.level == "normal": no_cli.append(client)
       
    for i in range(len(queue)):
        for j in range(3):
            if len(pr_cli) > 0: 
                atender(i, pr_cli[0])
                del pr_cli[0]
        for j in range(2):
            if len(go_cli) > 0: 
                atender(i, go_cli[0])
                del go_cli[0]
        if len(no_cli) > 0: 
                atender(i, no_cli[0])
                del no_cli[0]
    
def atender(n, client):
    client.transaction(n, 100) #Whatever you want
    g_trans[n] = client.id

class client:
    name = ""
    id = 0
    level = ""
    transactions = {}
    def __init__(self, n, l, i):
        name = n
        level = l
        id = i
    def transaction(self, n, amount):
        transactions[n] = amount
        
##NEXT: TRANSFORM THIS INTO A KATA