# LaTeX-Templates für PeP et Al. (WIP)

Dies Repo enthält einige LaTeX-Klassen und Dokumente
für den Schriftverkehr von Pep et Al.

Am besten man klont das Repo in den TEXMFHOME Ordner,
den erfährt man so:
```{shell}
$ kpsewhich -var-value=TEXMFHOME
```
Normalerweise ist dies `$HOME/texmf`

## Spendenbescheinigung

Die Klasse `pepspenden` ist für das Austellen von Spendenbescheinigungen
gedacht, aktuell ist sie auf die Verwendung von lualatex ausgelegt.

Eine Spendenbescheinigung kann mit dem Befehl 
`\spende{<betrag>}{<datum>}{<spenderadresse>}`
erzeugt werden.

Es sollte außerdem der Unterschreibende als Autor eingetragen sein.
Ein vollständiges Dokument könnte so aussehen:

```{latex}
\documentclass{pepspenden}
\author{Max Mustermann}

\begin{document}
\spende{5000}{1.1.2015}{%
  Erwin Musterspender\\
  Spenderstraße 5\\
  Generösenhausen
}
\end{document}
```

Es können auch mehrere Spenden in einem Dokument angelegt werden
