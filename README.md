# LaTeX-Templates für PeP et al.

Dieses Repo enthält einige LaTeX-Klassen und Dokumente
für den Schriftverkehr von Pep et al.

Wenn man dieses Repo nach TEXMFHOME/tex/latex/ klont,
hat man von überall Zugriff auf die Klassen und auch Logos.

TEXMFHOME ist üblicherweise `~/texmf`

Den Wert erfährt man über

```{shell}
$ kpsewhich -var-value TEXMFHOME
```

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

## Newsletter

Die Klasse `pepnewsletter` ist ein Zweispalten-Layout mit recht kleinen Rändern,
Title und Datum werden links im header gesetzt:

```{latex}
\documentclass{pepnewsletter}

\title{Newsletter}
\date{Mai 2015}

\begin{document}
\section*{Liebe Mitglieder}

...
\end{document}
```
