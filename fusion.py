import db
import itertools

cursor = db.cursor

def simpleFusion(a,b):
	result = []
	exec = "exec dbo.fusao '"+a+"', '"+b+"'"
	rows= cursor.execute(exec)
	for i in rows:
		result.append(i)
	return result


def multipleFusion(lista):
	demons = []
	results = []
	for i in lista:
		if i != '' and i not in demons:
			demons.append(i)
	possibleFusions= list(itertools.combinations(demons, 2))
	for i in possibleFusions:
		demon = simpleFusion(i[0],i[1])
		results.append(demon[0])
	return results


