import pyodbc
cnxn = pyodbc.connect(r'Driver={SQL Server};Server=DESKTOP-VJINPKA\SQLEXPRESS;Database=Persona5;Trusted_Connection=yes;')
cursor = cnxn.cursor()