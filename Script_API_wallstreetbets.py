
import requests
import psycopg2
import pandas as pd


# URL de la API
url = 'https://tradestie.com/api/v1/apps/reddit'

# Encabezados de la solicitud
headers = {"Accept-Encoding": "gzip, deflate"}

# Solicitud GET
response = requests.get(url, headers=headers)

# Comprobar el estado de la respuesta
if response.status_code == 200:
    # Si la respuesta es exitosa, obtener los datos en formato JSON
    data = response.json()
    
    # Imprimir las claves del primer elemento en los datos
    print(data[0].keys())
else:
    print("La solicitud no fue exitosa. Código de estado:", response.status_code)
    
# Itero los primeros 5 elementos en los datos
for i in range(5):
    item = data[i]
    print(f"Elemento {i + 1}:")
    for key, value in item.items():
        print(f"{key}: {value}")
    print("-" * 30)  # Separador entre elementos