\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{imagicair-technical}[201/09/06 Documento base para documentos en alambritocorp]

\LoadClass[DIV=12,%
               BCOR=0mm,%
               fontsize=11pt,%
               oneside,% twoside
               footinclude=false,%
               paper=210mm:11in]{scrbook}

% Symbols
% \RequirePackage{pifont}
% \RequirePackage{bbding}
% \RequirePackage{stix}
% \RequirePackage{MnSymbol}
% \RequirePackage{marvosym}
% \RequirePackage{ifsym}
% \RequirePackage{manfnt}
\RequirePackage{fontawesome}

\usepackage{anyfontsize}
\usepackage{wasysym}
\RequirePackage{fontspec}
\RequirePackage{relsize}
\RequirePackage{polyglossia}
\RequirePackage{xr}
%\RequirePackage{fancyref}
%\setmainfont[Mapping=tex-text]{Times New Roman}
\setmainfont[Mapping=tex-text]{Californian FB}
% these are not used but prevents XeTeX to barf
\setsansfont[Mapping=tex-text,Scale=MatchLowercase,BoldFont=DejaVu Sans Bold]{DejaVu Sans}
\setmonofont[Mapping=tex-text,Scale=MatchLowercase]{Hack}

\setmainlanguage{spanish}
%\setotherlanguage{spanish}

\RequirePackage{microtype} % you need an *updated* texlive 2012, but harmless
\RequirePackage{graphicx}
\RequirePackage{alltt}
\RequirePackage{verbatim}
\RequirePackage[yyyymmdd]{datetime}
% http://tex.stackexchange.com/questions/3033/forcing-linebreaks-in-url
\PassOptionsToPackage{hyphens}{url}
\RequirePackage[hyperfootnotes=false,hidelinks,breaklinks=true,spanish, colorlinks = true,
            linkcolor = black,
            urlcolor  = plum,
            citecolor = blue,
            anchorcolor = blue]{hyperref}
\RequirePackage{bookmark}
\RequirePackage[stable]{footmisc}
\RequirePackage{enumerate}
\RequirePackage{tabularx}
\RequirePackage[normalem]{ulem}
\RequirePackage{wrapfig}
\RequirePackage{indentfirst}
% remove the numbering
%\setcounter{secnumdepth}{-2}

%author's affiliation
\RequirePackage{authblk}

\RequirePackage{framed}
\RequirePackage{mdframed}
\RequirePackage{showexpl}

\mdfdefinestyle{mensajes}{%
rightline=true,innerleftmargin=10,innerrightmargin=10,
frametitlerule=true,frametitlerulecolor=cerulean,
frametitlebackgroundcolor=plum,
frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
frametitlerulewidth=2pt,
backgroundcolor=gray!20,
}

\mdfdefinestyle{code}{%
rightline=true,innerleftmargin=2,innerrightmargin=2,
frametitlerule=true,frametitlerulecolor=cerulean,
frametitlebackgroundcolor=orange,
frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
frametitlerulewidth=0.5pt,
backgroundcolor=black,
font={\hack\small\color{gray!70}}
}

\mdfdefinestyle{console}{%
rightline=true,innerleftmargin=2,innerrightmargin=2,
frametitlerule=true,frametitlerulecolor=cerulean,
frametitlebackgroundcolor=orange,
frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
frametitlerulewidth=0.5pt,
frametitle=Shell,
backgroundcolor=black,
everyline=true,
font={\hack\tiny\color{ForestGreen!70}}
}


\lstnewenvironment{codeJava} {%
\lstset{language=Java,basicstyle=\scriptsize\ttfamily,breaklines=true,%
	aboveskip=12pt,belowskip=12pt,xleftmargin=5pt, %
	numbers=left, numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{ochre}}}{}
\surroundwithmdframed[style=code, frametitle={Ejemplo Java}]{codeJava}

\lstnewenvironment{codeMSSQL} {%
\lstset{language=SQL,basicstyle=\scriptsize\ttfamily,breaklines=true,%
	aboveskip=5pt,belowskip=5pt,%
	breaklines=true, % 
    morekeywords={for, go, login, to, use, user, with}, %
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{cerulean}, %
    commentstyle=\color{orange}  
  }}{}
\surroundwithmdframed[style=code, frametitle={Consola SQL}]{codeMSSQL}

\lstnewenvironment{codeXML} {%
\lstset{language=XML,basicstyle=\scriptsize\ttfamily,breaklines=true,%
	aboveskip=5pt,belowskip=5pt,%
	breaklines=true, % 
    morekeywords={for, go, login, to, use, user, with}, %
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{cerulean}, %
    commentstyle=\color{orange}  
  }}{}
\surroundwithmdframed[style=code, frametitle={Código XML}]{codeXML}

\lstnewenvironment{shellBash} {%
\lstset{language=Bash,basicstyle=\scriptsize\ttfamily,breaklines=true,%
	aboveskip=8pt,belowskip=5pt, %
	breaklines=true, %
	escapeinside={\%*}{*)}, %
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle={{\color{plum} \emph}} 
  }}{}
\surroundwithmdframed[style=console, frametitle={Shell BASH}]{shellBash}

\lstnewenvironment{shellBat} {%
\lstset{language=sh,basicstyle=\scriptsize\ttfamily,breaklines=true,%
	aboveskip=5pt,belowskip=5pt, %
	breaklines=true, % 
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{orange}}}{}
\surroundwithmdframed[style=console, frametitle={Shell BAT}]{shellBat}



\mdfdefinestyle{alerta}{%
rightline=true,innerleftmargin=10,innerrightmargin=10,
frametitlerule=true,frametitlerulecolor=red,
frametitlebackgroundcolor=red,
frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
frametitlerulewidth=2pt,
backgroundcolor=white,
font={\color{plum}},
}

\mdfdefinestyle{warning}{%
rightline=true,innerleftmargin=10,innerrightmargin=10,
frametitlerule=true,frametitlerulecolor=Dandelion,
frametitlebackgroundcolor=YellowOrange,
frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
frametitlerulewidth=2pt,
backgroundcolor=white,
font={\color{DarkOrchid}},
}



\RequirePackage[]{draftwatermark}
%\RequirePackage[final]{draftwatermark}
\SetWatermarkText{BORRADOR}
\SetWatermarkLightness{0.75}
\DraftwatermarkOptions{angle=0,vpos=0.03\paperheight, scale=0.4}


\RequirePackage[dvipsnames]{xcolor}
\definecolor{light-gray}{gray}{0.87}
\definecolor{ultra-light-gray}{HTML}{DDEEDD}
\definecolor{cerulean}{rgb}{0 .48 .65}
\definecolor{plum}{rgb}{0.2272 .2705 .5215}
\definecolor{orange}{RGB}{255,127,0}
\definecolor{ochre}{HTML}{CC7722}
\RequirePackage[font=small,labelfont=bf,justification=centering]{caption}  % Required for specifying captions to tables and figures
\captionsetup{labelsep = colon}

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

% verbatim with line wrap
\RequirePackage{listings}
\lstset{
basicstyle=\scriptsize\ttfamily,
columns=flexible,
breaklines=true
}

\RequirePackage{keystroke}

%bibliografia en TOC
\RequirePackage[nottoc]{tocbibind}

% remove labels from the captions
\renewcommand*{\captionformat}{}
%\renewcommand*{\figureformat}{}
\renewcommand*{\tableformat}{}
\KOMAoption{captions}{belowfigure,nooneline}
\addtokomafont{caption}{\centering}

% avoid breakage on multiple <br><br> and avoid the next [] to be eaten
\newcommand*{\forcelinebreak}{\strut\\{}}

\newcommand*{\hairline}{%
  \bigskip%
  \noindent \hrulefill%
  \bigskip%
}

% reverse indentation for biblio and play

\newenvironment*{amusebiblio}{
  \leftskip=\parindent
  \parindent=-\parindent
  \smallskip
  \indent
}{\smallskip}

\newenvironment*{amuseplay}{
  \leftskip=\parindent
  \parindent=-\parindent
  \smallskip
  \indent
}{\smallskip}

\newcommand*{\Slash}{\slash\hspace{0pt}}

% global style
\pagestyle{plain}
\addtokomafont{disposition}{\rmfamily}
% forbid widows/orphans
\frenchspacing
\sloppy
\clubpenalty=10000
\widowpenalty=10000


\newfontfamily{\lucida}{Lucida Sans}
\newfontfamily{\hack}{Hack}
\newfontfamily{\berlin}{Bernard MT Condensed}
\newfontfamily{\segoe}{Segoe UI}
\newfontfamily{\dejavusans}{DejaVu Sans}
\newfontfamily{\segoei}[UprightFont={* Italic}]{Segoe UI}
\newfontfamily{\segoeib}[UprightFont={* Bold Italic}]{Segoe UI}
\newfontfamily{\veraSe}[UprightFont={* Bold}]{Bitstream Vera Sans Mono}
\newfontfamily{\symbola}{Symbola}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{fancyvrb}
\DefineVerbatimEnvironment{VerbEditedFile}{Verbatim}{formatcom=\color{gray},commandchars=\\\{\}}

%\renewcommand{\chaptermark}[1]{\markboth{\textit{\chaptername\ \thechapter.} #1}{}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}
%\fancyhead[LE,RO]{\nouppercase{\thepage}}
\fancyhead[RE,LO]{\fontsize{8}{10}  \lucida \selectfont \nouppercase{\rightmark}}
\fancyhead[RO]{\fontsize{8}{10} \lucida \selectfont \leftmark{} \hspace*{1cm}\includegraphics[width=1.5cm]{imagicair.eps}}
\fancyhead[LE]{\includegraphics[width=1.5cm]{imagicair.eps} \hspace*{1cm} \fontsize{8}{10} \lucida \selectfont \leftmark{} }
%\fancyhead[RE]{\lucida \nouppercase{\leftmark}}

%\rhead{\fontsize{8}{10} \lucida \selectfont \leftmark{} \hspace*{1cm}\includegraphics[width=1.5cm]{imagicair.eps}}
\cfoot{\fontsize{8}{10} \lucida \nouppercase{\thepage}}
\setlength{\headheight}{21.8pt}

\fancypagestyle{plain}{% 
\lhead{} 
\chead{}
\rhead{\hspace*{1cm}\includegraphics[width=1.5cm]{imagicair.eps}}
\lfoot{}
\cfoot{\fontsize{8}{10} \lucida \nouppercase{\thepage}}
\rfoot{}
}

% given that we said footinclude=false, this should be safe
\setlength{\footskip}{2\baselineskip}

\RequirePackage{dirtree}


\newdateformat{specialdate}{\twodigit{\THEDAY}-\shortmonthname[\THEMONTH]-\THEYEAR}
\newcommand*{\fullref}[1]{\hyperref[{#1}]{\autoref*{#1} \nameref*{#1}}} % One single link

\newcommand{\file}[1]{{\ttfamily{\colorbox{light-gray}{\color{ochre}{#1}}}}}
\newcommand{\ruta}[1]{{\ttfamily{\colorbox{ultra-light-gray}{\color{purple}{#1}}}}}
\newcommand{\niceurl}[1]{{\ttfamily{\colorbox{ultra-light-gray}{\color{red}{\href{#1}{#1}}}}}}
\newcommand{\ip}[1]{{\ttfamily{\colorbox{ultra-light-gray}{\color{purple}{#1}}}}}
\newcommand{\inlineCode}[1]{{\ttfamily{\colorbox{light-gray}{#1}}}}
\newcommand{\cmd}[1]{{\ttfamily{\colorbox{black}{\color{ForestGreen}{#1}}}}}
\newcommand{\module}[1]{{\ttfamily{\colorbox{RoyalPurple}{\color{ultra-light-gray}{#1}}}}}
\newcommand{\constant}[1]{{\ttfamily{\color{Sepia}{#1}}}}
\newcommand{\variable}[1]{{\ttfamily{\color{WildStrawberry}{#1}}}}
\newcommand{\appLabel}[1]{{\ttfamily{\color{DarkOrchid}{#1}}}}
\newcommand{\appValue}[1]{{\ttfamily{\color{Dandelion}{#1}}}}
\newcommand{\sw}[1]{{\smaller\segoe \selectfont \textbf{\color{CadetBlue}{#1}}}}
\newcommand{\so}[1]{{\small\sffamily \selectfont \color{Violet}{#1}}}
\newcommand{\option}[1]{{\ttfamily{\emph{\color{Maroon}{#1}}}}}
\newcommand{\app}[1]{\emph{\color{MidnightBlue}{#1}}}
\newcommand{\mainApp}[1]{{\smaller\segoeib \selectfont \textbf{\color{MidnightBlue}{#1}}}}
\newcommand{\enterprise}[1]{{\fontsize{8}{10}\lucida \emph{\color{Bittersweet}{#1}}}}
\newcommand{\prompt}{{{\color{cerulean}{machine:\char"0024} }}}
\newcommand{\sprompt}[1]{{{\color{cerulean}{machine:\char"0024}}  \mbox{{#1}} \Return\\}}
\newcommand{\sqlComment}[1]{{{\color{cerulean}\# {#1}} }}

\newcommand{\imagicair}{{\sffamily \color{blue}{imagic}\color{ForestGreen}{air}}}

% emoticon
\newcommand{\emoticonXD}{{\symbola \selectfont 😆}}
\newcommand{\emoticonWink}{{\symbola \selectfont {\colorbox{yellow}{\char"1F609}}}}


\RequirePackage{imagicair-technical-sw}

\author[1]{Ricardo Araos Rosales}
\affil[1]{\imagicair{} consultores}
