\ProvidesClass{pepnewsletter}[2015/05/05, documentclass for PeP newsletters]

% all options are passed to scrartcl
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

\PassOptionsToPackage{%
  paper=a4,
  headheight=55pt,
  headinclude,
  DIV=17,
}{typearea}
\LoadClass[
  twocolumn,
  parskip=half,
]{scrartcl}

% more space between the columns
\setlength\columnsep{0.5cm}
%captions font small and not whole width
\setcapwidth[c]{0.9\linewidth}
\setkomafont{caption}{\small}
\setkomafont{captionlabel}{\bfseries\small}
\setcapindent{1em}

% use sans font in document
\renewcommand{\familydefault}{\sfdefault}

% Fontsettings, compatible with all engines
\RequirePackage{ifxetex}
\RequirePackage{ifluatex}

\ifluatex%
  \RequirePackage{fontspec}
  \setsansfont{Tex Gyre Heros}
  \setmonofont{Tex Gyre Cursor}
  \PassOptionsToPackage{unicode}{hyperref}
\else%
  \ifxetex%
    \RequirePackage{fontspec}
    \setsansfont{Tex Gyre Heros}
    \setmonofont{Tex Gyre Cursor}
    \PassOptionsToPackage{unicode}{hyperref}
  \else%
    \RequirePackage[utf8]{inputenc}
    \RequirePackage[T1]{fontenc}
    \RequirePackage{tgheros}
    \RequirePackage{tgcursor}
  \fi
\fi

% % smaller spaces around sections
\RedeclareSectionCommand[%
  afterskip=1ex plus 0.5ex minus 0.2ex,
  beforeskip=-2ex plus -0.5ex minus -0.2ex,
]{section}

\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}
\setkomafont{pagefoot}{\upshape}
\ohead{\includegraphics[height=1.5cm]{logos/pep.pdf}}
\ihead{\vspace*{\fill}\Large\bfseries \@title\ \@date}
\cfoot{\href{https://pep-dortmund.org}{\texttt{pep-dortmund.org}}}

\RequirePackage{xcolor}
\PassOptionsToPackage{%
  colorlinks=true,
  urlcolor=blue!50!black,
}{hyperref}
\RequirePackage{hyperref}
