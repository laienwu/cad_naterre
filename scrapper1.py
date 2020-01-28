import requests
from bs4 import BeautifulSoup

base_url = "http://evene.lefigaro.fr"
next_page = "/citations/william-shakespeare"  # splitting the url in 2 to "next_page" later-on

citations = []

while True:
    try:
        urlContent = requests.get(base_url + next_page)
        soup = BeautifulSoup(urlContent.content, 'html.parser')
        boucles = soup.find_all('li', attrs={'class': 'figsco__selection__list__evene__list__item'})
        quotes = [quote.find('div', attrs={'class': 'figsco__quote__text'}).text[1:-1] for quote in
                  boucles]  # filtering the redundant quotes
        citations.extend(quotes)

        #if next_page == "/citations/william-shakespeare":
            #print("page 1 scrappée")
        #else:  # Print page number to view progress
            #print(f"page {next_page.split('=')[1]} scrappée")

        next_page = soup.find('li', class_="figsco__evene__search__pager last").a['href']

    except AttributeError:  # Break when next page doesn't exist
        break

print(len(citations))
