\ProvidesClass{peprechnungen}[2023/02/15 Klasse fuer PeP Rechnungen]
\ProcessOptions\relax
\LoadClass[
  a4paper,
  fontsize=12pt,
  parskip=half,
  foldmarks=false,
  DIV=14
]{scrlttr2}
\LoadLetterOption{pepbrief}

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

\newkomavar[\anrede]{Anrede}
\newkomavar[\adresse]{Adresse}
\newkomavar[\betrag]{Betrag}
\newcounter{Betrag}
\setcounter{Betrag}{100}
\newkomavar[\rechnungsdatum]{Rechnungsdatum}
\newkomavar[\durchfuehrungsdatum]{Durchführungsdatum}
\newkomavar[\jahr]{Jahr}
\newkomavar[\rechnungsnummer]{Rechnungsnummer}
\newkomavar[\fristdatum]{Fristdatum}

\setkomavar{subject}{Rechnung über die Ausstellergebühr für die PhysiKon \usekomavar{Jahr}}
\setkomavar{invoice}{\usekomavar{Rechnungsnummer}}

\renewcaptionname{ngerman}{\myrefname}{Steuernummer}
\setkomavar{myref}{315/5791/2796}

\DeclareDocumentCommand\rechnung{}{%
\begin{letter}{%
\usekomavar{Adresse}
}
% ANREDE
\opening{\usekomavar{Anrede},}
% BRIEFTEXT
für Ihre Teilnahme an der PhysiKon am \usekomavar{Durchführungsdatum} \usekomavar{Jahr} berechnen wir folgende Ausstellergebühr:

\renewcommand{\arraystretch}{1.2}
\begin{center}
  \bfseries\scshape
  \begin{tabular}{| c | c | c |}
    \hline
    \rowcolor{grau}
    Betrag in Ziffern  & Betrag in Buchstaben & Kontoinformationen\\
    \hline
    \normalfont \theBetrag,–\,$€$ & \normalfont \Numberstringnum{\theBetrag} Euro & \normalfont \begin{tabular}{@{}c@{}}\input{pepbankverbindung.tex}\end{tabular}\\
    \hline
  \end{tabular}
\end{center}
Wir bitten Sie, die Ausstellergebühr von \theBetrag{} Euro unter Angabe der Rechnungsnummer \usekomavar{Rechnungsnummer} bis zum \usekomavar{Fristdatum} auf unser Konto bei der Dortmunder Volksbank zu überweisen.

Für Fragen, Probleme oder Anregungen sind wir unter physikon@pep-dortmund.org zu erreichen. Alle Informationen finden Sie auch auf www.physikon.pep-dortmund.org.

Wir freuen uns auf eine erfolgreiche PhysiKon mit Ihnen!\\

Viele Grüße aus Dortmund\\

\@author
\end{letter}
}