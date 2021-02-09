try:
	f = open("challenge6")
	print("password6")
	f.close()
except IOError:
	try:
		f = open("challenge5")
		print("password5")
	except IOError:

		print("password4")

