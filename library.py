import urllib.request 

url = 'https://www.microsoft.com/en-us/download/details.aspx?id=54616'
filename = 'setup.exe'

with urllib.request.urlopen(url) as response, open(filename, 'wb') as out_file:
    data = response.read()
    out_file.write(data)

print(f"{filename} scaricato con successo!")
