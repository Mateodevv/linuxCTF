try:
	f = open("challenge6")
	print("streawkceur_galf_streawkceur")
	f.close()
except IOError:
	try:
		f = open("challenge5")
		print("das-ist-kein-bug")
	except IOError:

		print("Bin_ich_die_Flag?")

