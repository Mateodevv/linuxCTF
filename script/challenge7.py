import os

for root, dirs, files in os.walk("/home/ubuntu/challenge7"):
    for filename in files:
        if filename is "challenge7.pw":
            fileA = filename

for root, dirs, files in os.walk("/home/ubuntu/challenge7.1"):
    for filename in files:
        if filename is "challenge7.pw":
            fileB = filename

if fileA is fileB:
    print("Das Passwort lautet: secreth4Xx0r")

