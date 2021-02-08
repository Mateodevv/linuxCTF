# Praktikum CTF
`challenges_with_scripts.txt` enhtält die Namen der Challenges mit Skripten. Ein Name pro Zeile. Trailing New Line.

`py_to_bin.sh` kompiliert Python Skripte zu ausführbaren Binaries. Ausgabe in `/binary`

`build.sh` kompiliert alle Skripte und baut das Docker Image.
---
# Challenges
## Challenge 1
Das Passwort befindet sich in der Datei "challenge1" im Home-Verzeichnis.

`cat`

## Challenge 2
Welchen Namen hat die Datei im Unterverzeichnis "challenge2"?

`cd, ls`

## Challenge 3
Das Passwort befindet sich in der versteckten Datei im Unterverzeichnis "challenge2".

`man, cd, cat`

## Challenge 4
Die Datei "challenge4.sh" ist ein ausführbares Skript. Sie gibt das Passwort aus.

`man, sh`

## Challenge 5
Das Skript aus Challenge 4 hat eine andere Ausgabe, wenn eine Datei mit dem Namen "challenge5" im Homeverzeichnis existiert.

`man, touch, sh`
