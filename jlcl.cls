%% Based on the class file for LDV Forum -- Version 1.1 C. Kram & N. Bastron (2006)
%% Contributions by Adrien Barbaresi, Kais Haddar, Bryan Jurish.


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jlcl} % does it have to be a class? (why not a style file?)


\LoadClass[a5paper,pagesize,fontsize=9pt,headings=small,twoside]{scrartcl}
% pagesize default since version 3.17?
% paper=A5 does not seem to work
% DIV=something?


% % % possible solution for [arabic]{babel}, not currently working
% % % http://tex.stackexchange.com/questions/238225/arabic-support-in-babel-mess-up-chapter-referencing

%\makeatletter

%\def\@section[#1]#2{%
%\addtocontents{toc}{\xstring\select@language{\main@Arabi@language}}%
%\if@rl\SAV@@section[\textRL{#1}]{\textRL{#2}}%
%\else\SAV@@section[\textLR{#1}]{\textLR{#2}}%
%\fi}

%\def\@ssection#1{%
%\addtocontents{toc}{\xstring\select@language{\main@Arabi@language}}%
%\if@rl\SAV@ssection{\textRL{#1}}%
%\else\SAV@ssection{\textLR{#1}}%
%\fi}

%\makeatother


%%==========================================================================================%%
%% Vorspann Anfang
%%
%%==========================================================================================%%


\ifx\pdftexversion\undefined
  \RequirePackage[dvips]{graphicx}
 \else
  \RequirePackage[pdftex]{graphicx}
 \fi

\RequirePackage[T1]{fontenc} %% use [OT2,T1] for cyrillic characters
\RequirePackage[utf8]{inputenc} %% encoding %% [utf8x] causes option clash


\RequirePackage{setspace,ellipsis,url,fixltx2e,ae,natbib,tabularx,ntheorem,graphicx}


\RequirePackage[pdftex]{xcolor}         %% Grauwerte
\definecolor{hell}{gray}{0.80}  %% ...

\RequirePackage{lastpage}

\RequirePackage{fancyhdr}           %% Kopf- und Fu{\ss}zeilengestaltung ...
\pagestyle{fancy}               %% ...
\fancyhead{}                    %% initialisieren der Kopfzeile
\fancyhead[RE]{\sffamily{\large{\textcolor{black} {\authorlastnames}}}}
%%============ Autorenname

\fancyhead[LO]{\sffamily{\large{\textcolor{black}
{\shortarticletitle}}}}
%%============ Dokumenttitel

\fancyfoot{}                  %% initialisieren der Fu{\ss}zeile
\fancyfoot[RE]{\sffamily{\bfseries{\textcolor{black}
{JLCL}}}}  %%<========== links/innen LDV...

\fancyfoot[LO]{\sffamily{\bfseries{\textcolor{black}
{JLCL \jlclyear ~-- Band \jlclvolume$\,$(\jlclnumber)}}}}        %%<========== rechts/innen

\fancyfoot[LE]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
{\thepage}}}}}}     %%<========== Seitenzahl

\fancyfoot[RO]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
{\thepage}}}}}}     %%<========== Seitenzahl

\fancypagestyle{firstpage}{%
    \fancyhead{}
    %\renewcommand{\headrulewidth}{0pt}
    \fancyfoot{}                  %% initialisieren der Fu{\ss}zeile
    \fancyfoot[RE]{\sffamily{\bfseries{\textcolor{black}
    {JLCL}}}}  %%<========== links/innen LDV...

    \fancyfoot[LO]{\sffamily{\bfseries{\textcolor{black}
    {JLCL \jlclyear    ~-- Band \jlclvolume$\,$(\jlclnumber) -- \thepage-\pageref{LastPage} }}}}        %%<========== rechts/innen

    %\fancyfoot[LE]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
    %{\thepage}}}}}}     %%<========== Seitenzahl

    %\fancyfoot[RO]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
    %{\thepage}}}}}}     %%<========== Seitenzahl
}

\renewcommand{\headrule}{{\color{hell} \hrule width \headwidth height
\headrulewidth \vskip- \headrulewidth}}
\renewcommand{\footrule}{{\color{hell} \vskip- \footruleskip\vskip-
\footrulewidth \hrule width\headwidth height \footrulewidth\vskip\footruleskip}}

\renewcommand{\headrulewidth}{4.4pt}  %% oberer Balken
\renewcommand{\footrulewidth}{4.4pt}  %% unterer Balken

%\RequirePackage{endnotes}%             %% Endnoten ...
% \renewcommand{\footnote}{\endnote}
% \renewcommand{\notesname}{Endnoten}  %% bei englischen Texten keine Umdefinition !!

\setkomafont{caption}{\sffamily\small}
\setkomafont{captionlabel}{\sffamily\bfseries\small}

                                %% evtl. muss bei an diesen Parametern noch etwas gedreht werden
\pretolerance=100               %% Textsatz: interner Parameter zur Steuerung des Zeilenumbruchs
\tolerance 300                  %% 1414 Bewertungsgrenzwert f\"{u}r noch zu akzeptierende schlecht umgebrochene Zeilen
\hfuzz=0.2pt                    %% Grenze, ab der eine overfull hbox gemeldet wird
\vfuzz=0.2pt                    %% Grenzwert, ab dem die \"{U}berf\"{u}llung einer \vbox protokolliert wird
\hbadness 1414                  %% Grenzwert f\"{u}r �schlechte� Zeilen, bzw. Boxen
\vbadness   1000                  %% Grenzwert f\"{u}r eine �schlechte� \vbox
\emergencystretch 1.3em         %% zus\"{a}tzlicher dynamischer Leerraum
\hyphenpenalty=50               %% Strafpunkte bei Silbentrennung \"{u}ber Absatz hinweg
\widowpenalty=9999              %% falls letzte Zeile auf neue Seite gebrochen wird.
\clubpenalty=9999               %% wenn erste Zeile eines Absatzes auf alter Seite bleibt.
\doublehyphendemerits=900       %% Aufeinanderfolgende Silbentrennungen eher vermeiden.



%%==========================================================================================%%
%% Vorspann Ende
%%==========================================================================================%%

%\renewcommand{\rmdefault}      %% Benutzung anderer Standardschrift
%              {garawin}        %% ...

\RequirePackage{eco} %% medi�valziffern \oldstylenums \newstylenums
\RequirePackage[scaled=0.9]{helvet}
\RequirePackage{microtype}          %% optischer Randausgleich und minimale Skalierung.

%% load lmodern after microtype to avoid 'auto expansion' error
\RequirePackage{lmodern}

%% load geometry after the rest
\RequirePackage[inner=1.4cm,outer=1.2cm,top=1cm,bottom=1cm,includeheadfoot]{geometry}


%\RequirePackage[bookmarks=true,breaklinks=true,pdftex]{hyperref}
%\hypersetup{pdfauthor = {Name of Author},
%            pdftitle = {Title of docment},
%            pdfsubject = {Subject},
%            pdfkeywords = {Keyword1, Keyword2, ...},
%            pdfcreator = {LaTeX with hyperref package},
%            pdfproducer = {dvips + ps2pdf}}
%%==========================================================================================%%


\newcommand{\authordata}{\begin{spacing}{1.3}
{\noindent\sffamily\large{\authornames}}\\
\vskip -8pt \hrule \vskip 5pt

\noindent\sffamily\LARGE\bfseries{\articletitle}
\vskip 5pt %% wenn Titel mit Zeilenumbruch ==> \vskip 4pt
\hrule
\end{spacing}}

\endinput
