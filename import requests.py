import requests
from bs4 import BeautifulSoup

url = "http://books.toscrape.com/index.html"
response =  requests.get(url)
html = response.content
scarped = BeautifulSoup(html, 'html.parser')
print(scraped.title.text.strip())
