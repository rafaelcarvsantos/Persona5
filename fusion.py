import db


cursor = db.cursor

def simpleFusion(a,b):
	exec = "exec dbo.[fusao] '"+a+"', '"+b+"'"
	return cursor.execute(exec)

