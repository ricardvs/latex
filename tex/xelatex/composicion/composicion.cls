\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{composicion}[2021/09/06 Documento base para Ricardvs]

\LoadClass[DIV=12,%
               BCOR=0mm,%
               fontsize=19pt,%
               oneside,% twoside
               footinclude=false,%
               paper=210mm:11in]{scrbook}

%\RequirePackage{fontawesome}

%\RequirePackage{fontspec}
\RequirePackage{relsize}
\RequirePackage{polyglossia}
\RequirePackage{xr}
%\RequirePackage{fancyref}
%%\setmainfont[Mapping=tex-text]{Times New Roman}
%\setmainfont[Mapping=tex-text]{SchoolScriptDashed}
%% these are not used but prevents XeTeX to barf
%\setsansfont[Mapping=tex-text,Scale=MatchLowercase,BoldFont=DejaVu Sans Bold]{DejaVu Sans}
%\setmonofont[Mapping=tex-text,Scale=MatchLowercase]{Hack}

\usepackage[default]{frcursive}
\usepackage[T1]{fontenc}

\setmainlanguage{spanish}
%\setotherlanguage{spanish}

\RequirePackage{microtype} % you need an *updated* texlive 2012, but harmless
\RequirePackage{graphicx}
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

% avoid breakage on multiple <br><br> and avoid the next [] to be eaten
\newcommand*{\forcelinebreak}{\strut\\{}}

\newcommand*{\Slash}{\slash\hspace{0pt}}

% global style
\pagestyle{plain}
\addtokomafont{disposition}{\rmfamily}
% forbid widows/orphans
\frenchspacing
\sloppy
\clubpenalty=10000
\widowpenalty=10000

% given that we said footinclude=false, this should be safe
\setlength{\footskip}{2\baselineskip}

\newdateformat{specialdate}{\twodigit{\THEDAY}-\shortmonthname[\THEMONTH]-\THEYEAR}
\newcommand*{\fullref}[1]{\hyperref[{#1}]{\autoref*{#1} \nameref*{#1}}} % One single link
