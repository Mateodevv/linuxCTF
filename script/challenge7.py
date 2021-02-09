import os

for root, dirs, files in os.walk("/home/ubuntu/ordner7"):
    for filename in files:
        if filename == "challenge7.pw":
            fileA = filename

for root, dirs, files in os.walk("/home/ubuntu/ordner7.1"):
    for filename in files:
        if filename == "challenge7.pw":
            fileB = filename

if fileA == fileB:
    print("Das Passwort lautet: secreth4Xx0r")

