# Praktikum CTF
`challenges_with_scripts.txt` enhtält die Namen der Challenges mit Skripten. Ein Name pro Zeile. Trailing New Line.

`py_to_bin.sh` kompiliert Python Skripte zu ausführbaren Binaries. Ausgabe in `/binary`

`build.sh` kompiliert alle Skripte und baut das Docker Image.
# Container Ports


---
# Challenges
## Challenge 1
Das Passwort befindet sich in der Datei "challenge1" im Home-Verzeichnis.

`cat`

## Challenge 1A
Das Passwort befindet sich in der Datei "challenge1a with spaces" im Home-Verzeichnis.

`cat, man`

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
Wie lautet der Pfad der einzigen Datei mit einer Größe von 7872 Bytes in einem der Unterordner von "challenge8"?

`man, find`

## Challenge 9
Irgendwo auf dem Server liegt eine Datei, die dem User "betreuer" gehört und 21 Bytes groß ist. Sie enthält das Passwort.

`man, find`

## Challenge 10
Die Datei "challenge10" enthält eine Reihe zufälliger Zeilen. Irgendwo dazwischen befindet sich das Passwort. Es beginnt mit dem Wort "flag".

`grep, man`

## Challenge 10A
Das Passwort steht in der Datei "challenge10a" neben dem Wort "millionth".

`grep`

## Challenge 11
Die Datei "challenge11" ist gefüllt mit zufälligen Bytes. Irgendwo dazwischen befindet sich das Passwort. Es ist ein human readable String.

`strings, man`

## Challenge 12
Das Passwort steht in der Datei "challenge12" in der alphabetisch letzten Zeile.

`sort`

## Challenge 13
Das Passwort befindet sich in der Datei "challenge13" und ist die einzige Zeile, die nur einmal vorkommt.

`sort, uniq, | pipe`

## Challenge 14
Wie viele Worte hat das Skript der Penny Doku?

`wc, man`

## Challenge 15
Das Passwort steht in der Datei "challenge15". Allerdings wurden alle Vokale (aeiou) durch entsprechende Zahlen (1-5) ausgetauscht.

`tr, | pipe`

## Challenge 16
Das Passwort steht in der Datei "challenge16" und wurde ROT13 verschlüsselt. Tipp: ROT13 ist eine Caesar-Verschlüsselung.

`tr, | pipe`
