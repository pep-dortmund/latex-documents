# LaTeX-Templates für PeP et Al. (WIP)

Dies Repo entält einige LaTeX-Klassen und Dokumente
für den Schriftverkehr von Pep et Al.

Am besten man klont das Repo in den seinen TEXMFHOME Ordner
den erfährt man so:
```{shell}
$ kpsewhich -var-value=TEXMFHOME
```
Normalerweise ist dies `$HOME/texmf`

## Spendenbescheinigung

Die Klasse `pepspenden` ist für das Austellen von Spendenbescheinigungen
gedacht, aktuell ist sie auf die Verwendung von lualatex ausgelegt.

Eine Spendenbescheinigung kann mit dem Befehl 
`\spende{<betrag>}{<betrag in worten>}{<datum>}{<spenderadresse>}`
erzeugt werden.

Es sollte außerdem der Unterschreibende als Autor eingetragen sein.
Ein vollständiges Dokument könnte so aussehen:

```{latex}
\documentclass{pepspenden}
\author{Max Mustermann}

\begin{document}
\spende{5000,–}{fünftausend}{1.1.2015}{%
  Erwin Musterspender\\
  Spenderstraße 5\\
  Generösenhausen
}\end{document}
```
