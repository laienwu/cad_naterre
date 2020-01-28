import requests
from bs4 import BeautifulSoup
import scrapper1
import json

import requests
from bs4 import BeautifulSoup
# import scrapper1
import json

url = "https://fr.wikipedia.org/wiki/Cat%C3%A9gorie:Personnage_d%27animation"
urlContent = requests.get(url)
soup = BeautifulSoup(urlContent.content, 'html.parser')

frame = soup.find('div', class_="mw-content-ltr")               # creating object of the outer frame
divs = frame.findAll('li')                                      # getting divs containing character names

noms = [nom.text for nom in divs]
char = []

for nom in noms:
    if nom[-1].isupper() and len(nom) > 1:                      # filtering Capital letters titles
        char.append(nom[:-1])

    elif len(nom) > 1:
        char.append(nom)

# dict = {'Citations': scrapper1.citations,                       # creating dict for json export
#         'Personnages': char}
#
# with open('citationPersonnages.json', 'w') as f:
#     json.dump(dict, f)

print(char[24:])