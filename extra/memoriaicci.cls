\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../extra/memoriaicci}
[2011/04/17 v1 Estilo Memoria de Titulo - ICCI - UNAP (Basado en la original de UTalca (fmeza, jperez))]

\PassOptionsToClass{12pt,legalpaper,oneside,fleqn,spanish}{report}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

%\RequirePackage[none]{hyphenat} %esto desativa el hyphenation automatico de latex
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,spanish]{babel}
\RequirePackage{graphicx} % gráficos
\RequirePackage{setspace} % espaciado entre líneas
\RequirePackage{url}
\usepackage{placeins}
\RequirePackage{listingsutf8}
\RequirePackage{color}
\RequirePackage[hang,small,bf]{caption}
\RequirePackage{hyperref}
\RequirePackage[all]{hypcap}
\RequirePackage{soul}
\RequirePackage{xcolor}
\RequirePackage{comment}
\definecolor{mi-color}{gray}{0.75}  % esto es para que no te salga un
\definecolor{gray97}{gray}{.97}
\definecolor{gray75}{gray}{.75}
\definecolor{gray45}{gray}{.45}

%reglas de hypenathion
\hyphenation{in-te-ro-pe-ra-bles}
\hyphenation{sis-te-mas}
\hyphenation{sin-cro-ni-za-cion}
\hyphenation{he-te-ro-ge-ne-as}

%Quito los bordes de hyperref
\hypersetup{%
    pdfborder = {0 0 0}
}

%\RequirePackage[paperwidth=216mm, paperheight=330mm]{geometry}
%Configuración para el resaltado de código
\definecolor{gray}{rgb}{0.4,0.4,0.4}
\definecolor{darkblue}{rgb}{0.0,0.0,0.6}
\definecolor{cyan}{rgb}{0.0,0.6,0.6}
\definecolor{lightgray}{rgb}{.9,.9,.9}
\definecolor{darkgray}{rgb}{.4,.4,.4}
\definecolor{purple}{rgb}{0.65, 0.12, 0.82}

%%
%% Define el lenguaje JavaScript
%%
\lstdefinelanguage{JavaScript}{
  keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
  keywordstyle=\color{blue}\bfseries,
  ndkeywords={class, export, boolean, throw, implements, import, this},
  ndkeywordstyle=\color{darkgray}\bfseries,
  identifierstyle=\color{black},
  sensitive=false,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\color{red}\ttfamily,
  morestring=[b]',
  morestring=[b]"
}

\lstset{
   language=JavaScript,
   backgroundcolor=\color{lightgray},
   extendedchars=true,
   basicstyle=\footnotesize\ttfamily,
   showstringspaces=false,
   showspaces=false,
   numbers=left,
   numberstyle=\footnotesize,
   numbersep=9pt,
   tabsize=2,
   breaklines=true,
   showtabs=false,
   captionpos=b
}


\lstset{
  basicstyle=\ttfamily,
  columns=fullflexible,
  showstringspaces=false,
  commentstyle=\color{gray}\upshape
  frame=Ltb,
    framerule=0pt,
    aboveskip=0.5cm,
    framextopmargin=0pt,
    framexbottommargin=0pt,
    framexleftmargin=0.1cm,
    framesep=0pt,
    rulesep=.4pt,
    backgroundcolor=\color{gray97},
    rulesepcolor=\color{black},
    captionpos=b,
        %
    %stringstyle=\ttfamily,
    showstringspaces = false,
    basicstyle=\footnotesize,
    commentstyle=\color{gray45},
    %keywordstyle=\bfseries,
    %
    numbers=left,
    numbersep=5pt,
    numberstyle=\tiny,
    numberfirstline = false,
    breaklines=true,
	%Nuevo Estilo
	stringstyle=\color{black},
	identifierstyle=\color{darkblue},
	keywordstyle=\color{cyan},
}

\lstdefinelanguage{XML}
{
  morestring=[b]",
  morestring=[s]{>}{<},
  morecomment=[s]{<?}{?>},
  morekeywords={xmlns,version,type}% list your attributes here
}

\lstset{
     inputencoding=utf8,
     extendedchars=true,
     literate={ñ}{{\~n}}1 {ó}{{\'o}}1 {ú}{{\'u}}1 {á}{{\'a}}1 {í}{{\'i}}1
}

\renewcommand\lstlistingname{Listado}
\renewcommand\lstlistlistingname{Listados}
\renewcommand\tablename{Cuadro}
\renewcommand\listtablename{Listado de Cuadros}

\renewcommand{\rmdefault}{phv} % Arial
\renewcommand{\sfdefault}{phv} % Arial

\selectlanguage{spanish}
\bibliographystyle{plain}


\def\unap{Universidad Arturo Prat}
\def\facdeing{Facultad de Ingeniería}
\def\escdeicc{Y Arquitectura}
\def\ciudad{Iquique}
\def\pais{Chile}


\def\dedicaname{Dedicatoria}
\def\agradename{Agradecimientos}
\def\resumenname{Resumen}
\def\Abstractname{Abstract}
\def\tblcontname{Tabla de Contenidos}
\def\indfigname{Índice de Figuras}
\def\indtblname{Índice de Tablas}
\def\glosname{Glosario}
\def\appendixpartname{Anexos}

\def\patrocinante#1{\def\@patrocinante{#1}}
\def\alumno#1{\def\@alumno{#1}}
\def\adicional#1{\def\@adicional{#1}}
\def\director#1{\def\@director{#1}}
\def\titulo#1{\def\@titulo{#1}}
\def\grado#1{\def\@grado{#1}}

%%%
% Redimensión de márgenes
%%%

\setlength\paperheight{330mm}  %
\setlength\paperwidth{216mm}  %
\special{papersize=216mm,330mm}

\newdimen\realleftmargin
\newdimen\realrightmargin
\newdimen\realtopmargin
\newdimen\realbottommargin
\newdimen\realheadpos

\realtopmargin    = 4cm
\realleftmargin   = 3cm
\realbottommargin = 4cm
\realrightmargin  = 3cm
\realheadpos      = 1.5cm

\setlength\oddsidemargin   {\realleftmargin}
\addtolength\oddsidemargin {-1in}

\setlength\textheight{\paperheight}
  \addtolength\textheight {-\realtopmargin}
  \addtolength\textheight {-\realbottommargin}

\setlength\textwidth{\paperwidth}
 \addtolength\textwidth {-\realleftmargin}
 \addtolength\textwidth {-\realrightmargin}

\setlength\topmargin{\realheadpos}
 \addtolength\topmargin {-1in}

\setlength\headsep{\realtopmargin}
 \addtolength\headsep{-\realheadpos}
 \addtolength\headsep{-\headheight}






%%
% Redimensión de salto de línea entre párrafos
%%

\setlength{\parskip}{1cm}
\setlength{\parindent}{0pt}


%%%
% Definiciones para la tapa
%%%

\def\makeencabezado
{
\begin{center}
\onehalfspacing
%{\large\bf\MakeUppercase{\unap}} \\
{\large\MakeUppercase{\facdeing}} \\
{\large\MakeUppercase{\escdeicc}}
\end{center}
\singlespacing
}

\def\logo
{
\begin{center}
\includegraphics[scale=0.3]{../img/logo.png}
\end{center}
}

\def\footdate
{\bigskip
\begin{center}
{\ciudad~~-- \pais}
\end{center}
\begin{center}
{2013}
\end{center}

%\@date
}

%%%
% PORTADA
%%%

\def\maketitle
{
\setlength{\parskip}{0pt}

\singlespacing

% TAPA


\pagestyle{empty}
\vspace*{-25mm}

% Logo UNAP
\logo

% Encabezado
\makeencabezado

% Título de la memoria
\bigskip
\bigskip
\bigskip
\bigskip
\begin{center}
  {\bf \@titulo\\}
\end{center}


% Grado
\bigskip
\begin{center}
  {\@grado}
\end{center}


% Autor
\bigskip
\begin{center}
  {\@author}
\end{center}

\vfill

\doublespacing
\bigskip
\hbox to \textwidth{\hfill
    \vbox{
        \hbox{Profesor Patrocinante: \@patrocinante}
        \hbox{Alumno: \@alumno}
    } %vbox
} %hbox
\bigskip
\bigskip
\bigskip
\bigskip


\footdate

\newpage
\pagestyle{headings} %% de ahora en adelante hay headings en las páginas
\spacing{1.3}  %% Se setea el documento para que la separación de línea sea ``Single''
\setlength{\parskip}{1cm}

}

%%%
% Dedicatoria
%%%

\newenvironment{dedicatory}{
  \addcontentsline{toc}{chapter}{\dedicaname}
  \def\thepage{\csname @roman\endcsname \c@page}
  \thispagestyle{plain}
  \hbox{}\vskip 400\p@
  \flushright
  \itshape %% en itálica
  }{
  \normalfont %% vuelve a font normal
  \endflushright

  \newpage
  \def\thepage{\csname @arabic\endcsname \c@page}
}

%%%
% Agradecimientos
%%%

\newenvironment{acknowledgment}{
  \addcontentsline{toc}{chapter}{\agradename}
  \def\thepage{\csname @roman\endcsname \c@page}
  \thispagestyle{plain}
  \centerline{\bf\MakeUppercase{\agradename}}
  \onehalfspacing
  \vskip 2.5em
  }
  {

  \newpage
  \def\thepage{\csname @arabic\endcsname \c@page}
}

%%%
% Resumen
%%%

\newenvironment{resumen}{
  \addcontentsline{toc}{chapter}{\resumenname}
  \def\thepage{\csname @roman\endcsname \c@page}
  \thispagestyle{plain}
  \centerline{\bf\MakeUppercase{\resumenname}}%
  \onehalfspacing
  \vskip 2.5em
  }{

  \newpage
  \def\thepage{\csname @arabic\endcsname \c@page}
}

%%%
% Table of Contents
%%%

\renewcommand\tableofcontents{

  \setlength{\parskip}{0pt}
  \def\thepage{\csname @roman\endcsname \c@page} %% define el estilo de numeración
  \thispagestyle{plain} %% estilo de la página
  \centerline{\bf\MakeUppercase{\tblcontname}} %% escribe \tblcontname
  \begin{flushright} \pagename \end{flushright} %% escribe \pagename
  \par
  \@starttoc{toc} %% abre el archivo y escribe el toc

  \newpage %% nueva página
  \def\thepage{\csname @arabic\endcsname \c@page} %% por si no hay mas inicio
  \setlength{\parskip}{1cm}
}

%%%
% List of Figures
%%%

\renewcommand\listoffigures{
  \addcontentsline{toc}{chapter}{\indfigname}
  \def\thepage{\csname @roman\endcsname \c@page}
  \thispagestyle{plain}
  \centerline{\bf\MakeUppercase{\indfigname}}
  \begin{flushright} \pagename \end{flushright}
  \par
  \@starttoc{lof}

  \newpage
  \def\thepage{\csname @arabic\endcsname \c@page}
}

%%%
% List of Tables
%%%

\renewcommand\listoftables{
  \addcontentsline{toc}{chapter}{\indtblname}
  \def\thepage{\csname @roman\endcsname \c@page}
  \thispagestyle{plain}
  \centerline{\bf\MakeUppercase{\indtblname}}
  \begin{flushright} \pagename \end{flushright}
  \par
  \@starttoc{lot}

  \newpage
  \def\thepage{\csname @arabic\endcsname \c@page}
}

%%%
% Formato encabezado capítulo
%%%

\def\@makechapterhead#1{%
  \thispagestyle{plain}
  \vspace*{25mm}
  \edef\@svsec{\hbox to 1cm{\thechapter.}\hskip 1em }
  \begingroup \Huge\bf\relax
     {\interlinepenalty \@M {#1}\par}%
  \endgroup

  \vspace*{7mm}
  \hrule height 2pt width \textwidth

  \newpage
}

\def\section{\@startsection {section}{1}{\z@}
  {-3.5ex plus -1ex minus -.2ex}
  {2.3ex plus .2ex}
  {\normalfont\large\bf}}
\def\subsection{\@startsection{subsection}{2}{\z@}
  {-3.25ex plus-1ex minus-.2ex}
  {1.5ex plus.2ex}
  {\normalfont\normalsize\bf}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}
  {-3.25ex plus -1ex minus-.2ex}
  {1.5ex plus.2ex}
  {\normalfont\normalsize\bf}}
\def\paragraph{\@startsection
  {paragraph}{4}{\z@}
  {3.25ex plus1ex minus.2ex}
  {-1em}
  {\normalfont\normalsize\bf}}
\def\subparagraph{\@startsection
  {subparagraph}{4}
  {\parindent}
  {3.25ex plus1ex minus .2ex}
  {-1em}
  {\normalfont\normalsize\bf}}

%%%
% Glosario
%%%

\newenvironment{glosario}
{
	\newpage
	\addcontentsline{toc}{chapter}{\glosname}
	\thispagestyle{plain}
	\@mkboth{\MakeUppercase\glosname}{\MakeUppercase\glosname} % marca para los headings
  \vspace*{26mm}
  {\Huge\bf\relax\noindent {\glosname}\par}

  \bigskip\bigskip\bigskip
	\begin{description}
}
{
	\end{description}
}

%%%
% Bibliografia
%%%

\renewenvironment{thebibliography}[1]{
	\newpage
	\addcontentsline{toc}{chapter}{\bibname}
	\thispagestyle{plain}
	\@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname} % marca para los headings
  \vspace*{26mm}
  {\Huge\bf\relax\noindent {\bibname}\par}

  \bigskip\bigskip\bigskip

  %%% no tengo idea por qué pero esto genera la bibliografía
  \list
  {\@biblabel{\@arabic\c@enumiv}}
  {\setlength{\leftmargin}{0pt}
  	\@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
}

%%%
% Anexos
%%%

\def\appendixpart{
  \cleardoublepage
  \thispagestyle{empty}
  \setcounter{chapter}{0}%
  \def\Thechapter{\Alph{chapter}}
  \def\thechapter{\Alph{chapter}}

  \addtocontents{toc}{\protect\contentsline{chapter}{\appendixpartname}{}}
  \addtocontents{lof}%
  {\protect\addvspace{10\p@}}% Adds between-chapter space
  \addtocontents{lot}%
  {\protect\addvspace{10\p@}}% to lists of figs & tables.


  \hbox{}\vfil
  \centerline{\Huge \bf \MakeUppercase\appendixpartname}\par
  \vfil\newpage
  \pagestyle{headings}
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\appendix{\cleardoublepage
  \setcounter{section}{0}
  \secdef\@appendix\@sappendix}

  \def\@appendix[#1]#2{
  \ifnum \c@secnumdepth >-2\relax
  \refstepcounter{chapter}%
  \addcontentsline{toc}{chapter}{\Thechapter:\hspace{1em}#1}
  \else
  \addcontentsline{toc}{chapter}{#1}
  \fi
  \addtocontents{lof}%
  {\protect\addvspace{10\p@}}% Adds between-chapter space
  \addtocontents{lot}%
  {\protect\addvspace{10\p@}}% to lists of figs & tables.

  \thispagestyle{plain}
  \vspace*{25mm}
  \edef\@svsec{\hbox to 1cm{\thechapter.}\hskip 1em }
  \begingroup \Huge\bf\relax
     \@hangfrom{\hskip \z@\relax\@svsec}
     {\interlinepenalty \@M {#2}\par}%
  \endgroup

  \vspace*{7mm}
  \hrule height 2pt width \textwidth

  \bigskip\bigskip\bigskip
  \@mkboth{\MakeUppercase{\Thechapter:\hspace{1em}#1}}{\MakeUppercase{\Thechapter:\hspace{1em}#1}} % marca para los headings
  }

\def\@sappendix#1{{\centering
    \interlinepenalty \@M
    \Huge \bf
    #1\par}\@endappendix}

\endinput

