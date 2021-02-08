try:
	f = open("challenge")
	print("5")
	f.close()
except IOError:
	print("4")

