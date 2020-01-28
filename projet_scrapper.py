from random import choice
import json

with open('citationPersonnages.json', 'r') as f:
    donnees = json.load(f)


def random_quote():
    return choice(donnees["Citations"])


def random_character():
    return choice(donnees["Personnages"])


while True:
    print(f'{random_quote()} a dit {random_character()}')
    x = input('Une autre? (Oui: Entrée |  Non: q)')
    if x.lower() == 'q':
        break




