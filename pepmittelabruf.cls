\ProvidesClass{pepmittelabruf}[2023/02/15 Klasse fuer PeP Mittelabruf]
\ProcessOptions\relax
\LoadClass[
  a4paper,
  fontsize=12pt,
  parskip=half,
  foldmarks=false,
  DIV=14
]{scrlttr2}
\LoadLetterOption{pepbrief}
\setplength{firstfootvpos}{62em}
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
\newcounter{Mittel}
\setcounter{Mittel}{100}
\newkomavar[\rechnungsdatum]{Rechnungsdatum}
\newkomavar[\durchfuehrungsdatum]{Durchführungsdatum}
\newkomavar[\jahr]{Jahr}
\newkomavar[\rechnungsnummer]{Rechnungsnummer}
\newkomavar[\fristdatum]{Fristdatum}

\setkomavar{firstfoot}{
  \hfill%
  \parbox[c]{5cm}{%
    Bankverbindung\\
    \input{pepbankverbindung.tex}%
  }
}

\setkomavar{subject}{Mittelabruf für die Absolventenfeier \usekomavar{Jahr} der Fakultät Physik der TU Dortmund}

\DeclareDocumentCommand\mittelabruf{}{%
\begin{letter}{%
\usekomavar{Adresse}
}
% ANREDE
\opening{\usekomavar{Anrede},}
% BRIEFTEXT
die Absolventenfeier der Fakultät Physik der TU Dortmund wird dieses Jahr wieder von uns, dem Alumniverein PeP et al.\ e.\,V., veranstaltet.
Daher möchten wir die von Ihrer Stiftung zur Verfügung gestellten Mittel in Höhe von \theMittel{} Euro abrufen.

Bitte stellen Sie uns die Mittel bis zum \usekomavar{Fristdatum} zur Verfügung.



\closing{Beste Grüße aus Dortmund}

\end{letter}
}