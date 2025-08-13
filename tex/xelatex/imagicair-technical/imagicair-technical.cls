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

\usepackage{newfloat}
\DeclareFloatingEnvironment[name={Código}]{codefigure}
\DeclareFloatingEnvironment[name={JSON}]{jsonfigure}
\DeclareFloatingEnvironment[name={XML}]{xmlfigure}
\DeclareFloatingEnvironment[name={YAML}]{yamlfigure}
\DeclareFloatingEnvironment[name={Java}]{javafigure}
\DeclareFloatingEnvironment[name={TypeScript}]{typescriptfigure}
\DeclareFloatingEnvironment[name={SQL}]{sqlfigure}
\DeclareFloatingEnvironment[name={BASH}]{consolefigure}
\DeclareFloatingEnvironment[name={BAT}]{batfigure}
\DeclareFloatingEnvironment[name={Properties}]{propertiesfigure}
\DeclareFloatingEnvironment[name={Texto}]{txtfigure}
\usepackage{capt-of}

\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{newunicodechar}

\newcommand{\DeclareUnicodeCharacter}[2]{%
    \begingroup\lccode`|=\string"#1\relax
    \lowercase{\endgroup\newunicodechar{|}}{#2}%
}

\DeclareUnicodeCharacter{2190}{$\leftarrow$}
\DeclareUnicodeCharacter{2191}{$\uparrow$}
\DeclareUnicodeCharacter{2192}{$\rightarrow$}
\DeclareUnicodeCharacter{2193}{$\downarrow$}

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
backgroundcolor=ghostly-white,
font={\hack\small\color{gray!70}}
}

\mdfdefinestyle{console}{%
rightline=true,innerleftmargin=2,innerrightmargin=2,
innertopmargin=-0.5em,
skipabove=2em,
frametitlerule=false,
%frametitlerulecolor=cerulean,
%frametitlebackgroundcolor=orange,
%frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
%frametitlerulewidth=0.5pt,
%frametitle=Shell,
backgroundcolor=black,
everyline=true,
font={\hack\tiny\color{LimeGreen!95}}
}

\makeatletter
\lst@CCPutMacro
    \lst@ProcessOther {"22}{\lst@ifupquote \textquotedbl
                                     \else \char34\relax \fi}
    \@empty\z@\@empty
\makeatother

\lstdefinelanguage{JSON}{
    keywords={null},
    keywordstyle=\color{ochre},
    basicstyle=\scriptsize\ttfamily\color{black},
    stringstyle=\ttfamily\color{ultra-light-gray},
    numbers=left,
    numberstyle=\scriptsize\color{ochre}\ttfamily,
	aboveskip=4pt,
    belowskip=4pt,
    lineskip=0pt,
    xleftmargin=5pt,
    stepnumber=1,
    numbersep=8pt,
    showstringspaces=true,
    breaklines=true,
    frame=lines,
    showlines=false,
    keepspaces=true,
    rulecolor=\color{black},
    fillcolor=\color{ultra-light-gray},
    backgroundcolor=\color{ghostly-white},
    literate=
      {:}{{{\color{magenta}{:}}}}{1}
      {,}{{{\color{magenta}{,}}}}{1}
      {\{}{{{\color{ochre}{\{}}}}{1}
      {\}}{{{\color{ochre}{\}}}}}{1}
      {[}{{{\color{ochre}{[}}}}{1}
      {]}{{{\color{ochre}{]}}}}{1}
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
      {\'}{{{\color{magenta}{\textquotesingle}}}}{1}
}

\lstdefinelanguage{yaml}{
    basicstyle=\color{blue}\footnotesize,
    rulecolor=\color{black},
    string=[s]{'}{'},
    stringstyle=\color{blue},
    comment=[l]{\#},
    commentstyle=\color{black},
    %morecomment=[l]{-},
    showstringspaces=true,
	frame=lines,
	showlines=false,
	keepspaces=true,
	breaklines=true,
	morestring=[b]',
	morestring=[b]",
    literate=
      {:}{{{\color{magenta}{:}}}}{1}
      {,}{{{\color{magenta}{,}}}}{1}
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
      {\'}{{{\color{magenta}{\textquotesingle}}}}{1}
}

\lstdefinelanguage{bash}{
    basicstyle=\color{LimeGreen!95}\footnotesize,
    rulecolor=\color{black},
    keywords=[2]{alias, apropos, apt, apt\-get, aptitude, aspell, at, awk, basename, base32, base64, bash, bc, bg, bind, break, builtin, bzip2, cal, caller, case, cat, cd, cfdisk, chattr, chgrp, chmod, chown, chpasswd, chroot, chkconfig, cksum, clear, clear_console, cmp, comm, command, continue, cp, cpio, cron, crontab, csplit, curl, cut, date, dc, dd, ddrescue, declare, df, diff, diff3, dig, dir, dircolors, dirname, dirs, dos2unix, dmesg, dpkg, du, echo, egrep, eject, elinks, enable, env, ethtool, eval, exec, exit, expand, export, expr, false, fdformat, fdisk, fg, fgrep, file, find, fmt, fold, for, format, free, fsck, ftp, function, fuser, gawk, getopts, getfacl, grep, groupadd, groupdel, groupmod, groups, gzip, hash, head, help, history, hostname, htop, iconv, id, if, ifconfig, ifdown, ifup, import, install, iostat, ip, jobs, join, kill, killall, klist, less, let, link, ln, local, locate, logname, logout, look, lpc, lpr, lprint, lprintd, lprintq, lprm, lsattr, lsblk, ls, lsof, lspci, make, man, mapfile, md5sum, mkdir, mkfifo, mkfile, mkisofs, mknod, mktemp, more, most, mount, mtools, mtr, mv, mmv, nc, netstat, nft, nice, nl, nohup, notify-send, nslookup, open, op, passwd, paste, pathchk, Perf, ping, pgrep, pkill, popd, pr, printcap, printenv, printf, ps, pushd, pv, pwd, quota, quotacheck, ram, rar, rcp, read, readarray, readonly, reboot, rename, renice, remsync, return, rev, rm, rmdir, rsync, screen, scp, sdiff, sed, select, seq, set, setfacl, sftp, sha256sum, shift, shopt, shuf, shutdown, sleep, slocate, sort, source, split, ss, ssh, stat, strace, su, sudo, sum, suspend, sync, tabs, tail, tar, tee, test, time, timeout, times, tmux, touch, top, tput, traceroute, trap, tr, true, tsort, tty, type, ulimit, umask, umount, unalias, uname, unexpand, uniq, units, unix2dos, unrar, unset, unshar, until, uptime, useradd, userdel, usermod, users, uuencode, uudecode, v, vdir, vi, vim, vmstat, w, wait, watch, wc, whereis, which, while, who, whoami, wget, write, xargs, xdg-open, xxd, xz, yes, zip},
    keywordstyle=\color{ochre},
    string=[s]{'}{'},
    stringstyle=\color{green},
    comment=[l]{\#},
    commentstyle=\color{gray},
    %morecomment=[l]{-},
    showstringspaces=true,
	frame=lines,
	showlines=false,
	keepspaces=true,
	breaklines=true,
    %fillcolor=\color{black},
    backgroundcolor=\color{black},
	morestring=[b]',
	morestring=[b]",
    literate=
      {:}{{{\color{magenta}{:}}}}{1}
      {.}{{{\color{magenta}{.}}}}{1}
      {!!}{{{\color{magenta}{!!}}}}{1}
      {,}{{{\color{magenta}{,}}}}{1}
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
      {\'}{{{\color{magenta}{\textquotesingle}}}}{1}
}


\lstnewenvironment{codeJSON}[3][\scriptsize]{%
\minipage{\linewidth}
\captionof{jsonfigure}{#2}
\label{#3}
\lstset{language=JSON,basicstyle=#1\hack,
        breaklines=true
    }}{\endminipage}


\lstnewenvironment{codeJava}[3][\scriptsize] {%
\captionof{javafigure}{#2}
\label{#3}
\lstset{language=Java,basicstyle=#1\ttfamily,breaklines=true,%
	aboveskip=12pt,belowskip=12pt,xleftmargin=5pt, %
	numbers=left, numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{magenta},
    keywords=[2]{Long, Integer, Double, Byte, Boolean, String, List, long, int, double, byte, boolean},
    keywordstyle=[2]\color{plum},
    breaklines=true,
    keepspaces=true,
    frame=lines,
    basicstyle=\scriptsize\ttfamily\color{cerulean},
    stringstyle=\ttfamily\color{purple},
    identifierstyle=\color{dark-gray},
    rulecolor=\color{black},
    fillcolor=\color{ultra-light-gray},
    backgroundcolor=\color{ghostly-white},
    literate=
        {@}{{{\color{plum}{@}}}}{1},
        {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
    } }{}
%\surroundwithmdframed[style=code, frametitle={Ejemplo Java}]{codeJava}

\lstdefinelanguage{TypeScript}{
  keywords=[1]{abstract, any, as, boolean, break, case, catch, class, console, 
    const, continue, debugger, declare, default, delete, do, else, enum, export, 
    extends, false, finally, for, from, function, get, if, implements, import, in, 
    infer, instanceof, interface, keyof, let, module, namespace, never, new, null, 
    number, object, package, private, protected, public, readonly, require, return, 
    set, static, string, super, switch, symbol, this, throw, true, try, type, typeof, 
    undefined, unique, unknown, var, void, while, with, yield},
  basicstyle=\color{dark-gray}\scriptsize\ttfamily,
  keywords=[2]{findById, map, pipe, tap, forkJoin, distinct, switchMap, subscribe, transform, instant},
  keywordstyle=[1]\color{magenta}\scriptsize\ttfamily\bfseries,
  keywordstyle=[2]\color{plum}\scriptsize\ttfamily,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]",
  sensitive=true,
  frame=lines,
  identifierstyle=\color{dark-gray},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\color{red}\ttfamily,
  rulecolor=\color{black},
  numbers=left,
  fillcolor=\color{ultra-light-gray},
  backgroundcolor=\color{ghostly-white},
  keepspaces=true,
  literate= *{\{}{{{\color{magenta}{\{}}}}{1}
      {\}}{{{\color{magenta}{\}}}}}{1}
      {[}{{{\color{purple}{[}}}}{1}
      {]}{{{\color{purple}{]}}}}{1}
      {>}{{{\color{cerulean}{>}}}}{1}
      {<}{{{\color{cerulean}{<}}}}{1}
      {;}{{{\color{cerulean}{;}}}}{1}
      {=}{{{\color{cerulean}{=}}}}{1}
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
      {\'}{{{\color{magenta}{\textquotesingle}}}}{1}
}

\lstnewenvironment{codeTypeScript}[3][\scriptsize] {%
\captionof{typescriptfigure}{#2}
\label{#3}
\lstset{language=TypeScript,
    basicstyle=\color{dark-gray}#1\ttfamily
    breaklines=true,%
	aboveskip=12pt,
    belowskip=12pt,
    xleftmargin=5pt, %
    }}{}
%\surroundwithmdframed[style=code, frametitle={Ejemplo TypeScript}]{codeTypeScript}

\lstnewenvironment{codeSQL}[3][\scriptsize] {%
\captionof{sqlfigure}{#2}
\label{#3}
\lstset{language=SQL,
    basicstyle=#1\hack,
    breaklines=true,%
	breaklines=true, % 
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{cerulean}, %
    commentstyle=\color{orange},
    frame=lines,
    rulecolor=\color{black},
    fillcolor=\color{ultra-light-gray},
    backgroundcolor=\color{ghostly-white},
    literate = 
      {\'}{{{\color{magenta}{\textquotesingle}}}}{1}
  }}{}


\lstnewenvironment{codeMSSQL}[3][\scriptsize] {%
\captionof{sqlfigure}{#2}
\label{#3}
\lstset{language=SQL,
    basicstyle=#1\ttfamily,
    breaklines=true,%
	aboveskip=5pt,belowskip=5pt,%
	breaklines=true, % 
    morekeywords={for, go, login, to, use, user, with}, %
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{cerulean}, %
    commentstyle=\color{orange},
    frame=lines,
    rulecolor=\color{black},
    fillcolor=\color{ultra-light-gray},
    backgroundcolor=\color{ghostly-white},
    literate = 
      {\'}{{{\color{magenta}{\textquotesingle}}}}{1}
  }}{}
%\surroundwithmdframed[style=code, frametitle={Consola SQL}]{codeMSSQL}

\lstnewenvironment{codeXML}[3][\scriptsize]{%
\captionof{xmlfigure}{#2}
\label{#3}
\lstset{language=XML,basicstyle=#1\ttfamily,breaklines=true,%
	aboveskip=5pt,belowskip=5pt,%
	breaklines=true, % 
    morekeywords={for, go, login, to, use, user, with}, 
    frame=lines,
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, 
    keywordstyle=\color{cerulean}, 
    commentstyle=\color{orange},
    rulecolor=\color{black},
    fillcolor=\color{ultra-light-gray},
    keepspaces=true,
    backgroundcolor=\color{ghostly-white},
    literate=
      {<}{{{\color{magenta}{<}}}}{1}
      {>}{{{\color{magenta}{>}}}}{1}
      {/}{{{\color{plum}{/}}}}{1}
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
      {[}{{{\color{magenta}{[}}}}{1}
      {]}{{{\color{magenta}{]}}}}{1}
      {=}{{{\color{magenta}{=}}}}{1}
  }}{}
%\surroundwithmdframed[style=code, frametitle={Código XML}]{codeXML}

\lstnewenvironment{codeYAML}[3][\scriptsize] {%
\captionof{yamlfigure}{#2}
\label{#3}
\lstset{language=yaml,basicstyle=#1\ttfamily,breaklines=true,%
	aboveskip=5pt,belowskip=5pt,%
	breaklines=true, % 
    frame=lines,
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, 
    keywordstyle=\color{cerulean}, 
    commentstyle=\color{gray},
    rulecolor=\color{black},
    fillcolor=\color{ultra-light-gray},
    keepspaces=true,
    backgroundcolor=\color{ghostly-white},
    literate=
      {<}{{{\color{magenta}{<}}}}{1}
      {>}{{{\color{magenta}{>}}}}{1}
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
      {[}{{{\color{magenta}{[}}}}{1}
      {]}{{{\color{magenta}{]}}}}{1}
      {=}{{{\color{magenta}{=}}}}{1}
      {:}{{{\color{magenta}{:}}}}{1}
      {:/}{{{\color{black}{:/}}}}{1}
  }}{}
%\surroundwithmdframed[style=code, frametitle={Código YAML}]{codeYAML}



\lstnewenvironment{shellBash}[3][\scriptsize] {%
\captionof{consolefigure}{#2}
\label{#3}
\lstset{language=bash,basicstyle=#1\ttfamily\color{LimeGreen!95},
	aboveskip=8pt,belowskip=5pt, 
    frame=tlbr,framesep=2pt,framerule=0pt,
	breaklines=true, %
	escapeinside={\%*}{*)}, %
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle={{\color{green} \ttfamily}} ,
    literate = 
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
  }}{}
\surroundwithmdframed[style=console]{shellBash}

\lstnewenvironment{shellBat}[3][\scriptsize] {%
\captionof{batfigure}{#2}
\label{#3}
\lstset{language=sh,basicstyle=#1\ttfamily\color{LimeGreen!95},
	aboveskip=5pt,belowskip=5pt, %
    frame=tlbr,framesep=2pt,framerule=0pt,
	breaklines=true, % 
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, %
    keywordstyle=\color{orange},
    literate = 
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
    }}{}
\surroundwithmdframed[style=console, frametitle={Shell BAT}]{shellBat}

\mdfdefinestyle{editor}{%
rightline=true,
innerleftmargin=2,
innerrightmargin=2,
frametitlerule=true,
frametitlerulecolor=cerulean,
frametitlebackgroundcolor=orange,
frametitlefont={\bfseries\sffamily\color{white}\hspace{2em}},
frametitlerulewidth=0.5pt,
backgroundcolor=ghostly-white,
font={\hack\small\color{black!75}}
}

\lstnewenvironment{properties}[4][\scriptsize] {%
\captionof{#2}{#3}
\label{#4}
\lstset{basicstyle=#1\ttfamily,
	breaklines=true,%
    frame=tb,
    backgroundcolor=\color{ghostly-white},
	aboveskip=8pt,belowskip=5pt, %
    upquote=true,
	breaklines=true, % 
    numbers=left, %
	numberstyle={{\color{ochre} \ttfamily}}, 
    literate = 
      {\"}{{{\color{magenta}{\textquotedbl}}}}{1}
}}{}


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


\RequirePackage[dvipsnames,table]{xcolor}
\definecolor{light-gray}{gray}{0.87}
\definecolor{dark-gray}{gray}{0.17}
\definecolor{ultra-light-gray}{HTML}{DDEEDD}
\definecolor{ghostly-white}{HTML}{F8F8FF}
\definecolor{cerulean}{rgb}{0 .48 .65}
\definecolor{plum}{rgb}{0.2272 .2705 .5215}
\definecolor{ferrari}{HTML}{FF2800}
\definecolor{rust}{HTML}{8B4000}
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
\setlength{\footskip}{8\baselineskip}

\RequirePackage{dirtree}

\usepackage{cellspace}
\AtBeginEnvironment{tabular}{\rowcolors{1}{\ifnumequal{\rownum}{1}{ochre}{gray!15}}{white}{}}%
\newcolumntype{L}{>{\ifnumequal{\rownum}{1}{\sffamily\bfseries\color{white}}}Sl}
\newcolumntype{C}{>{\ifnumequal{\rownum}{1}{\sffamily\bfseries\color{white}}}Sc}
\newcolumntype{R}{>{\ifnumequal{\rownum}{1}{\sffamily\bfseries\color{white}}}Sr}
\newcolumntype{P}[1]{>{\ifnumequal{\rownum}{1}{\sffamily\bfseries\vskip -6pt\color{white}}}p{#1}}
%\newcolumntype{P}[1]{>{\ifnumequal{\rownum}{1}{\sffamily\bfseries}}p{#1}}{
\setlength{\cellspacetoplimit}{5pt}
\setlength{\cellspacebottomlimit}{5pt}

\newdateformat{specialdate}{\twodigit{\THEDAY}-\shortmonthname[\THEMONTH]-\THEYEAR}
\newcommand*{\fullref}[1]{\hyperref[{#1}]{\autoref*{#1} \nameref*{#1}}} % One single link

\newcommand{\file}[1]{{\ttfamily{\colorbox{light-gray}{\color{ochre}{#1}}}}}
\newcommand{\ruta}[1]{{\ttfamily{\colorbox{ultra-light-gray}{\color{purple}{#1}}}}}
\newcommand{\niceurl}[1]{{\ttfamily{\colorbox{ultra-light-gray}{\color{red}{\href{#1}{#1}}}}}}
\newcommand{\niceHref}[2]{{\ttfamily{\colorbox{ultra-light-gray}{\color{red}{\href{#1}{#2}}}}}}
\newcommand{\ip}[1]{{\ttfamily{\colorbox{ultra-light-gray}{\color{purple}{#1}}}}}
\newcommand{\inlineCode}[1]{{\ttfamily{\colorbox{light-gray}{#1}}}}
\newcommand{\cmd}[1]{{\ttfamily{\colorbox{black}{\color{ForestGreen}{#1}}}}}
\newcommand{\module}[1]{{\ttfamily{\colorbox{RoyalPurple}{\color{ultra-light-gray}{#1}}}}}
\newcommand{\datatype}[1]{{\ttfamily{\color{ferrari}{#1}}}}
\newcommand{\constant}[1]{{\ttfamily{\color{Sepia}{#1}}}}
\newcommand{\field}[1]{{\ttfamily{\color{rust}{#1}}}}
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
\newcommand{\svnIP}{74.235.228.204}

% emoticon
\newcommand{\emoticonXD}{{\symbola \selectfont 😆}}
\newcommand{\emoticonWink}{{\symbola \selectfont {\colorbox{yellow}{\char"1F609}}}}


\RequirePackage{imagicair-technical-sw}

\author[1]{Ricardo Araos Rosales}
\affil[1]{\imagicair{} consultores}
