\ProvidesClass{pepspenden}[2015/05/05 Klasse fuer PeP Spendenbescheinigungen]
\ProcessOptions\relax
\LoadClass{scrartcl}

%Fontsettings, compatible with all engines
\RequirePackage{ifxetex}
\RequirePackage{ifluatex}

\ifluatex%
  \RequirePackage{fontspec}
  \setmainfont{Source Sans Pro}
  \RequirePackage{polyglossia}
  \setmainlanguage{german}
\else%
  \ifxetex%
    \RequirePackage{fontspec}
    \setmainfont{Source Sans Pro}
    \RequirePackage{polyglossia}
    \setmainlanguage{german}
  \else%
    \RequirePackage[utf8]{inputenc}
    \RequirePackage[T1]{fontenc}
    \RequirePackage[default]{sourcesanspro}
    \RequirePackage[ngerman]{babel}
  \fi
\fi

\RequirePackage{fmtcount}
\FCloadlang{german}

\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}
\setkomafont{pagefoot}{\normalfont\footnotesize}
\setkomafont{pagehead}{\normalfont}

\KOMAoptions{%
  fontsize=12pt,
  paper=a4,
  parskip=half,
  headinclude,
  headheight=50pt,
  footheight=50pt,
}
\typearea{14}


\RequirePackage{tabu}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{siunitx}
\sisetup{locale=DE, group-separator=., group-minimum-digits=4}

\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}
\RequirePackage{xcolor}
\definecolor{grau}{rgb}{0.830,0.865,0.857}

\RequirePackage{xparse}
\RequirePackage{amssymb}

\RequirePackage{graphicx}
\RequirePackage[colorlinks=true, urlcolor=blue!50!black, unicode]{hyperref}

\newcommand\vorsitzender{%
  Lena Linhoff\\
  Otto-Hahn-Straße 4a\\
  44227 Dortmund%
}

\ihead{%
  \textbf{\Large PeP et al.\ e.\,V.} \\
	Bestätigung über Geldzuwendungen%
}

\ohead{\includegraphics[height=1.5cm]{logos/pep.pdf}}

\ifoot{%
  \parbox[c]{5cm}{%
    PeP et al.\ e.\,V.\\
    \url{www.pep-dortmund.org}\\
    \vspace{16pt}
  }
}

\cfoot{%
  \parbox[c]{4.2cm}{%
    \input{pepadresse.tex}%
  }
}

\ofoot{%
  \hfill%
  \parbox[c]{5cm}{%
    Bankverbindung\\
    \input{pepbankverbindung.tex}%
  }
}

\DeclareDocumentCommand\spende{m m m}{%
\newpage
\textbf{Aussteller}

Physikstudierende und ehemalige Physikstudierende an der TU Dortmund et al. e.\,V.\\
\vorsitzender

Bestätigung über Geldzuwendungen im Sinne §\,10b des Einkommensteuergesetzes an eine der in §\,5 Abs.~1 Nr.~9 des Körperschaftsteuergesetzes bezeichneten Körperschaften, Personenvereinigungen oder Vermögensmassen.

\textbf{Name und Anschrift des Zuwendenden}

#3

\renewcommand{\arraystretch}{1.2}
\begin{center}
  \bfseries\scshape
	\begin{tabu}{|[1pt]C{4.5cm}|[1pt]C{6cm}|[1pt]C{4.5cm}|[1pt]}
		\tabucline[1pt]{-}
		\rowcolor{grau}
		 Betrag in Ziffern	&	Betrag in Buchstaben	&	Tag der Zuwendung\\
		\tabucline[1pt]{-}
    \rmfamily\normalfont \num{#1},–\,€ & \normalfont \Numberstringnum{#1} Euro	&	#2\\
		\tabucline[1pt]{-}
	\end{tabu}
\end{center}

Es handelt sich um den Verzicht auf Erstattung von Aufwendungen\qquad Ja $\square$\quad Nein $\boxtimes$

{\footnotesize  
Wir sind wegen Förderung der Volks- und Berufsbildung sowie der
Studentenhilfe nach dem Freistellungsbescheid bzw. nach der Anlage zum
Körperschaftsteuerbescheid des Finanzamtes Dortmund-Hörde, StNr. 315/5791/2796,
vom 27.07.2018 für den letzten Veranlagungszeitraum 2015 bis 2017 nach §\,5
Abs.~1 Nr.~9 des Körperschaftsteuergesetzes von der Körperschaftsteuer  und
nach §\,3 Nr.~6 des Gewerbesteuergesetzes von der Gewerbesteuer  befreit. 

Es wird bestätigt, dass die Zuwendung nur zur Förderung der Volks- und
Berufsbildung einschließlich der Studentenhilfe (im Sinne der Anlage 1 – zu
§\,48 Abs.~2 Einkommensteuer-Durchführungsverordnung – Abschnitt A Nr.~4)
verwendet wird.}

\vspace{0.5cm}
Dortmund, den \@date\\[1cm]
\@author\\
Vorstand PeP et al.\ e.\,V.\

\vspace*{\fill}
{\footnotesize
Hinweis:

Wer vorsätzlich oder grob fahrlässig eine unrichtige Zuwendungsbestätigung
erstellt oder wer veranlasst, dass Zuwendungen nicht zu den in der
Zuwendungsbestätigung angegebenen steuerbegünstigten Zwecken verwendet werden,
haftet für die Steuer, die dem Fiskus durch einen etwaigen Abzug der
Zuwendungen bei Zuwendenden entgeht (§\,10b Abs.~4 EStG, §\,9 Abs.~3 KStG,
§\,9 Nr.5 GewStG).

Diese Bestätigung wird nicht als Nachweis für die steuerliche Berücksichtigung
der Zuwendung anerkannt, wenn das Datum des Freistellungsbescheids länger als
5 Jahre bzw.\ das Datum der vorläufigen Bescheinigung länger als 3 Jahre seit
Ausstellung der Bestätigung zurückliegt (§\,63 Abs.~5 AO). } }
