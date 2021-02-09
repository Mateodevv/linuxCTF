# Praktikum CTF
`challenges_with_scripts.txt` enhtält die Namen der Challenges mit Skripten. Ein Name pro Zeile. Trailing New Line.

`py_to_bin.sh` kompiliert Python Skripte zu ausführbaren Binaries. Ausgabe in `/binary`

`build.sh` kompiliert alle Skripte und baut das Docker Image.
# Container Ports

Linux Container: http://85.214.193.94:1113/

CTF'D: http://85.214.193.94:1114/

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
Die Datei "challenge4.sh" ist ein ausführbares Programm. Sie gibt das Passwort aus.

`google`

## Challenge 5
Das Programm aus Challenge 4 hat eine andere Ausgabe, wenn eine Datei mit dem Namen "challenge5" im Homeverzeichnis existiert.

`touch`

## Challenge 6
Welche Ausgabe hat das Programm, wenn eine Datei "challenge6" im Homeverzeichnis existiert?

`mv`

## Challenge 7
Kopiere die Datei "challenge7" aus dem Verzeichnis "challenge7" in einen neuen Ordner "ordner7.1". Das Programm "ordner7" gibt dir das Passwort

`mkdir, cp`

## Challenge 8
Wie lautet der Pfad der einzigen Datei mit einer Größe von 7872 Bytes in einem der Unterordner von "challenge7"?

`man, find`

## Challenge 9
Irgendwo auf dem Server liegt eine Datei, die dem User "betreuer" gehört und 21 Bytes groß ist. Sie enthält das Passwort.

`man, find`
