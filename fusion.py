import db
import itertools

cursor = db.cursor

def simpleFusion(a,b):
	result = []
	exec = "exec dbo.fusao '"+a+"', '"+b+"'"
	rows= cursor.execute(exec)
	try:
		for i in rows:
			result.append(i)
	except:
		return
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
		if demon != [] and demon is not None:
			print(demon)
			results.append(demon[0])
	return results

def multipleFusionTwice(lista):
	demons = lista
	prev_results = multipleFusion(demons)
	for i in prev_results:
		demons.append(i[1])
	return multipleFusion(demons)


def specialFusion(lista):
	result = []
	listaString =" ".join(str(x) for x in lista)
	exec = "exec dbo.fusaoEspecial '"+listaString+"'"
	print(exec)
	rows= cursor.execute(exec)
	print(rows)
	for i in rows:
			result.append(i)
	return result


