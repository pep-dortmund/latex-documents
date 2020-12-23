\ProvidesClass{pepurkunde}[2019/03/04 v1.0]

\LoadClass[parskip=half, fontsize=11pt]{scrartcl}
\pagestyle{empty}

\RequirePackage{tikz}

\RequirePackage{xcolor}
\definecolor{tu}{RGB}{131,184,23}
\definecolor{physik}{RGB}{8,81,162}

\RequirePackage{xparse}
\RequirePackage[all]{background}
\SetBgPosition{current page.north west}
\SetBgOpacity{1.0}
\SetBgAngle{0.0}
\SetBgScale{1.0}

\SetBgContents{%
  \begin{tikzpicture}[remember picture, overlay]
    \fill[tu] (1.5cm, 0) rectangle (5.5cm, -\paperheight);
    \node[anchor=center, inner sep=0pt] at (3.5cm, -3cm) {%
      \includegraphics[width=3.8cm]{schwingung_positiv_white.pdf}
    };
  \end{tikzpicture}
}

\RequirePackage{geometry}
\newgeometry{margin=1.5cm, left=6.5cm, top=3cm}

\RequirePackage{fontspec}
%\setsansfont{Akkurat Office}
\renewcommand\familydefault\sfdefault

\RequirePackage{polyglossia}
\setmainlanguage{german}

\RequirePackage{graphicx}
