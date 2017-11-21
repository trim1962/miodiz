%%
%% This is file `dictionaryDC.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dictionaryDC.dtx  (with options: `class')
%%   ______________________________________________________
%%   The dictionaryDC package for LaTeX
%%   Copyright (C) 2011-2016 Claudio Beccari, Heinrich Fleck
%%   All rights reserved
%% 
%%   License information appended
%% 
%%
%% File `dictionaryDC.dtx'.
%% Copyright (C) 2009-2013 Claudio Beccari, Heinrich Fleck, all rights reserved.
%%
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{dictionaryCD}%
   [2017/06/10 v.1.0 Class for typesetting a dictionary]
%%
%%
%%
%%
%%
%%
\newif\ifshiftsizes      \shiftsizesfalse
\newif\ifGreekTimes      \GreekTimesfalse
\newif\ifDebug           \Debugfalse
\newif\ifNoInputEncoding \NoInputEncodingfalse
\DeclareOption{9pt}{\shiftsizestrue}
\DeclareOption{italian}{\AtEndOfClass{\AfterEndPreamble{\selectlanguage{italian}}}}
\DeclareOption{english}{\AtEndOfClass{\AfterEndPreamble{\selectlanguage{english}}}}
\DeclareOption{french}{\AtEndOfClass{\AfterEndPreamble{\selectlanguage{french}}}}
\DeclareOption{german}{\AtEndOfClass{\AfterEndPreamble{\selectlanguage{german}}}}
\DeclareOption{greek}{\AtEndOfClass{\AfterEndPreamble{\selectlanguage{greek}}}}
\DeclareOption{latin}{\AtEndOfClass{\AfterEndPreamble{\selectlanguage{latin}}}}
\DeclareOption{GreekTimes}{\GreekTimestrue}
\DeclareOption{debug}{\Debugtrue}
\DeclareOption{noinputencoding}{\NoInputEncodingtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax
\LoadClass[twoside,a4paper,captions=tableheading,%
headings=small,captions=nooneline]{scrbook}
\let\HUGE\Huge
\ifshiftsizes
   \input{scrsize10pt.clo}%
   \let\HUGE\Huge             %25pt
   \let\Huge\huge             %20pt
   \let\huge\LARGE            %17pt
   \let\LARGE\Large           %14pt
   \let\Large\large           %12pt
   \let\large\normalsize      %10pt
   \let\normalsize\small      % 9pt
   \let\small\footnotesize    % 8pt
   \let\footnosize\scriptsize % 7pt
   \let\scriptsize\tiny       % 6pt
\fi
\areaset[10mm]{\dimexpr448pt+5mm\relax}{\dimexpr639pt+6\baselineskip\relax}
\footskip2\baselineskip
\advance\topmargin1.5\baselineskip
    \ClassInfo{dictionaryCD}{%
      These are the values describing the layout:\MessageBreak
      DIV\space\space=\space\number\ta@div\MessageBreak
      BCOR\space=\space\the\ta@bcor\MessageBreak
      \string\paperwidth\space\space\space\space\space\space=%
                           \space\the\paperwidth\MessageBreak
      \space\string\textwidth\space\space\space\space\space\space=%
                           \space\the\textwidth\MessageBreak
      \space DIV-departure\space\space\space=%
                           \space\the\@tempcnta/100\MessageBreak
      \space\string\evensidemargin\space=%
                           \space\the\evensidemargin\MessageBreak
      \space\string\oddsidemargin\space\space=%
                           \space\the\oddsidemargin\MessageBreak
      \string\paperheight\space\space\space\space\space=%
                           \space\the\paperheight\MessageBreak
      \space\string\textheight\space\space\space\space\space=%
                           \space\the\textheight\MessageBreak
      \space\string\topmargin\space\space\space\space\space\space=%
                           \space\the\topmargin\MessageBreak
      \space\string\headheight\space\space\space\space\space=%
                           \space\the\headheight\MessageBreak
      \space\string\headsep\space\space\space\space\space\space\space\space=%
                           \space\the\headsep\MessageBreak
      \space\string\topskip\space\space\space\space\space\space\space\space=%
                           \space\the\topskip\MessageBreak
      \space\string\footskip\space\space\space\space\space\space\space=%
                           \space\the\footskip\MessageBreak
      \space\string\baselineskip\space\space\space=%
                           \space\the\baselineskip\MessageBreak
    }%
\RequirePackage{imakeidx}
\RequirePackage{etoolbox}
\unless\ifNoInputEncoding\RequirePackage[utf8]{inputenc}\fi
\RequirePackage[LGR,T1]{fontenc}
\RequirePackage[german,french,greek.ancient,latin,italian,english]{babel}
\RequirePackage{textalpha}
\newcommand*\lift@accent[2]{\leavevmode
{\edef\slant@{\strip@pt\fontdimen1\font}%
\dimen@=\z@\setbox\z@\hbox{\char#1}\advance\dimen@-.5\wd\z@
\setbox\tw@\hbox{i}\setbox\z@\hbox{#2}%
\ifdim\wd\z@>\wd\tw@\advance\dimen@ .5\wd\z@
    \else\advance\dimen@ .3\wd\z@\fi
\ifx#2a\advance\dimen@-.1\wd\z@\fi
\ifx#2h\advance\dimen@.05\wd\z@\fi
\@tempdima\ht\z@\advance\@tempdima-1ex\relax
\advance\dimen@\slant@\@tempdima
\raise\@tempdima\hbox to\z@{\kern\dimen@\char#1\relax\hss}\box\z@}}

\newcommand*\lift@tie[1]{\leavevmode
{\edef\slant@{\strip@pt\fontdimen1\font}%
\dimen@=\z@
\setbox4\hbox{\raise1.07ex%
    \hbox{\usefont{OML}{cmmi}{m}{it}\selectfont\char94}}\relax
\advance\dimen@-.5\wd4
\setbox\tw@\hbox{i}\setbox\z@\hbox{#1}%
\ifdim\wd\z@>\wd\tw@\advance\dimen@ .5\wd\z@
    \else\advance\dimen@ .3\wd\z@\fi
\ifx#1a\advance\dimen@-.1\wd\z@\fi
\ifx#1h\advance\dimen@.05\wd\z@\fi
\@tempdima\ht\z@\advance\@tempdima-1ex\relax
\advance\dimen@\slant@\@tempdima
\raise\@tempdima\hbox to\z@{\kern\dimen@\box4\hss}\box\z@}}

\DeclareTextCommand{\U}{LGR}[1]{%
\iffontchar\font151\relax
   \lift@accent{151}{#1}%
\else
   \lift@tie{#1}%
\fi}

\def\lishape{\fontshape{li}\selectfont}
\def\spazia{\ifx\let@token\sp@token\ \fi}
\providecommand\textLipsias{}\providecommand\textDidot{}
\renewcommand\textLipsias[1]{\leavevmode\iflanguage{greek}{{\lishape#1}}
   {\begin{otherlanguage}{greek}{\lishape#1}\end{otherlanguage}}%
   \futurelet\let@token\spazia}
\renewcommand\textDidot[1]{\leavevmode\iflanguage{greek}{{\upshape#1}}
   {\begin{otherlanguage}{greek}{\upshape#1}\end{otherlanguage}}%
   \futurelet\let@token\spazia}
\DeclareRobustCommand\GRD[1]{%
{\catcode`\"=12\relax\catcode`\~=12\relax
\usefont{LGR}{\f@family}{\f@series}{n}\selectfont\scantokens{#1\relax}}}
\DeclareRobustCommand\GRL[1]{%
     {\catcode`\"=12\relax\catcode`\~=12\relax
 \ifGreekTimes\usefont{LGR}{\f@family}{\f@series}{it}\else
 \usefont{LGR}{\f@family}{\f@series}{li}\fi\selectfont\scantokens{#1\relax}}}
\AtBeginDocument{\RequirePackage{txfonts}}

\ifGreekTimes
\IfFileExists{txfontsb.sty}{%
\AtBeginDocument{\RequirePackage{txfontsb}%
\let\lishape\itshape
}%
}{\GreekTimesfalse
\ClassWarning{dictionaryDC}{%
Greek fonts matching the TX ones are not available.
\MessageBreak
Option GreekTimes is ignored
}%
}
\else
\DeclareFontFamily{LGR}{txr}{}
  \DeclareFontShape{LGR}{txr}{m}{n}{<->ssub * cmr/m/n}{}
  \DeclareFontShape{LGR}{txr}{m}{it}{<->ssub * cmr/m/it}{}
  \DeclareFontShape{LGR}{txr}{m}{sl}{<->ssub * cmr/m/sl}{}
  \DeclareFontShape{LGR}{txr}{m}{sc}{<->ssub * cmr/m/sc}{}
  \DeclareFontShape{LGR}{txr}{b}{n}{<->ssub * cmr/bx/n}{}
  \DeclareFontShape{LGR}{txr}{b}{it}{<->ssub * cmr/bx/it}{}
  \DeclareFontShape{LGR}{txr}{b}{sl}{<->ssub * cmr/bx/sl}{}
  \DeclareFontShape{LGR}{txr}{b}{sc}{<->ssub * cmr/bx/sc}{}
  \DeclareFontShape{LGR}{txr}{bx}{n}{<->ssub * cmr/bx/n}{}
  \DeclareFontShape{LGR}{txr}{bx}{it}{<->ssub * cmr/bx/it}{}
  \DeclareFontShape{LGR}{txr}{bx}{sl}{<->ssub * cmr/bx/sl}{}
  \DeclareFontShape{LGR}{txr}{bx}{sc}{<->ssub * cmr/bx/sc}{}

  \DeclareFontShape{LGR}{txr}{m}{li}{<->ssub * cmr/m/li}{}
  \DeclareFontShape{LGR}{txr}{b}{li}{<->ssub * cmr/b/li}{}
  \DeclareFontShape{LGR}{txr}{bx}{li}{<->ssub * cmr/bx/li}{}
  \DeclareFontShape{LGR}{txr}{m}{ui}{<->ssub * cmr/m/ui}{}
  \DeclareFontShape{LGR}{txr}{b}{ui}{<->ssub * cmr/m/ui}{}
  \DeclareFontShape{LGR}{txr}{bx}{ui}{<->ssub * cmr/bx/ui}{}
  \DeclareFontShape{LGR}{txr}{m}{rs}{<->ssub * cmr/m/rs}{}
  \DeclareFontShape{LGR}{txr}{b}{rs}{<->ssub * cmr/m/rs}{}
  \DeclareFontShape{LGR}{txr}{bx}{rs}{<->ssub * cmr/bx/rs}{}

  \DeclareFontFamily{LGR}{txss}{}
  \DeclareFontShape{LGR}{txss}{m}{n}{<->ssub * cmss/m/n}{}
  \DeclareFontShape{LGR}{txss}{m}{it}{<->ssub * cmss/m/it}{}
  \DeclareFontShape{LGR}{txss}{m}{sl}{<->ssub * cmss/m/sl}{}
  \DeclareFontShape{LGR}{txss}{m}{sc}{<->ssub * cmss/m/sc}{}
  \DeclareFontShape{LGR}{txss}{b}{n}{<->ssub * cmss/bx/n}{}
  \DeclareFontShape{LGR}{txss}{b}{it}{<->ssub * cmss/bx/it}{}
  \DeclareFontShape{LGR}{txss}{b}{sl}{<->ssub * cmss/bx/sl}{}
  \DeclareFontShape{LGR}{txss}{b}{sc}{<->ssub * cmss/bx/sc}{}
  \DeclareFontShape{LGR}{txss}{bx}{n}{<->ssub * cmss/bx/n}{}
  \DeclareFontShape{LGR}{txss}{bx}{it}{<->ssub * cmss/bx/it}{}
  \DeclareFontShape{LGR}{txss}{bx}{sl}{<->ssub * cmss/bx/sl}{}
  \DeclareFontShape{LGR}{txss}{bx}{sc}{<->ssub * cmss/bx/sc}{}

  \DeclareFontFamily{LGR}{txtt}{\hyphenchar\font=-1}
  \DeclareFontShape{LGR}{txtt}{m}{n}{<->ssub * cmtt/m/n}{}
  \DeclareFontShape{LGR}{txtt}{m}{it}{<->ssub * cmtt/m/it}{}
  \DeclareFontShape{LGR}{txtt}{m}{sl}{<->ssub * cmtt/m/sl}{}
  \DeclareFontShape{LGR}{txtt}{m}{sc}{<->ssub * cmtt/m/sc}{}
  \DeclareFontShape{LGR}{txtt}{b}{n}{<->ssub * cmtt/bx/n}{}
  \DeclareFontShape{LGR}{txtt}{b}{it}{<->ssub * cmtt/bx/it}{}
  \DeclareFontShape{LGR}{txtt}{b}{sl}{<->ssub * cmtt/bx/sl}{}
  \DeclareFontShape{LGR}{txtt}{b}{sc}{<->ssub * cmtt/bx/sc}{}
  \DeclareFontShape{LGR}{txtt}{bx}{n}{<->ssub * cmtt/bx/n}{}
  \DeclareFontShape{LGR}{txtt}{bx}{it}{<->ssub * cmtt/bx/it}{}
  \DeclareFontShape{LGR}{txtt}{bx}{sl}{<->ssub * cmtt/bx/sl}{}
  \DeclareFontShape{LGR}{txtt}{bx}{sc}{<->ssub * cmtt/bx/sc}{}
\fi
\AtBeginDocument{\def\txbfamily{\usefont{LGR}{lmr}{\f@series}{\f@shape}}

\DeclareTextCommand{\Digamma}{LGR}{{\fontfamily{cmr}\selectfont\char195\relax}}
\DeclareTextCommand{\ddigamma}{LGR}{{\fontfamily{cmr}\selectfont\char147\relax}}
\DeclareTextCommand{\Qoppa}{LGR}{{\fontfamily{cmr}\selectfont\char21\relax}}
\let\Koppa\Qoppa\let\Coppa\Qoppa
\DeclareTextCommand{\qoppa}{LGR}{{\fontfamily{cmr}\selectfont\char19\relax}}
\DeclareTextCommand{\coppa}{LGR}{{\fontfamily{cmr}\selectfont\char18\relax}}
\let\koppa\qoppa\let\varkoppa\qoppa
\DeclareTextCommand{\sampi}{LGR}{{\fontfamily{cmr}\selectfont\char27\relax}}
\DeclareTextCommand{\Sampi}{LGR}{{\fontfamily{cmr}\selectfont\char23\relax}}
\DeclareTextCommand{\stigma}{LGR}{{\fontfamily{cmr}\selectfont\char6\relax}}
\DeclareTextCommand{\varstigma}{LGR}{{\fontfamily{cmr}\selectfont\char7\relax}}
\DeclareTextCommand{\Stigma}{LGR}{{\fontfamily{cmr}\selectfont\char22\relax}}
\DeclareTextCommand{\euro}{LGR}{{\fontfamily{cmr}\selectfont\char24\relax}}
\DeclareTextCommand{\permill}{LGR}{{\fontfamily{cmr}\selectfont\char25\relax}}
}%    \end{macrocode}
\DeclareTextCommand{\f}{LGR}{{\txbfamily\textdigamma}}
\AtBeginDocument{
   \@ifpackageloaded{amssymb}%
     {% amssymb loaded
        \let\AMSdigamma\digamma
        \def\digamma{\textormath{\f}{\AMSdigamma}}}
     {% amssymb not loaded
        \let\digamma\f}
}
   \DeclareTextCommand{\F}{LGR}{{\txbfamily\textDigamma}}
   \DeclareTextCommand{\Digamma}{LGR}{{\txbfamily\textDigamma}}

\DeclareRobustCommand{\fLow}%
    {{\setbox\z@\hbox{\f}\dimen@\ht\z@
    \advance\dimen@-1ex\raise-\dimen@\hbox{\box\z@}}}
\DeclareRobustCommand{\fHigh}%
    {{\setbox\z@\hbox{\f}\dimen@\dp\z@\raise\dimen@\hbox{\box\z@}}}

\def\@ifStar#1#2{\def\@tempA{#1}\def\@tempB{#2}\futurelet\@tempC\@testStar}
\def\@testStar{\ifx\@tempC*\bbl@afterelse\expandafter\@tempA\@gobble\else
      \bbl@afterfi\@tempB\fi}
\DeclareRobustCommand*{\Greeknumeral}{%
      \let\n@vanta\Coppa\let\n@vecento\Sampi
      \@ifStar{\Gr@@kn@meral}{\Gr@@knum@ral}}
\DeclareRobustCommand*{\greeknumeral}{%
      \let\n@vanta\varkoppa\let\n@vecento\sampi
    \@ifStar{\let\s@i\stigma\gr@@numeral}{\let\s@i\fLow\gr@@numeral}}
\def\Gr@@kn@meral#1{\let\s@i\Stigma
    \expandafter\MakeUppercase\expandafter{\gr@@numeral{#1}}}
\def\Gr@@knum@ral#1{\let\s@i\Digamma
    \expandafter\MakeUppercase\expandafter{\gr@@numeral{#1}}}
\def\grtoday{{\expandafter\greeknumeral\expandafter{\the\day}}\space
\gr@c@month\space{\expandafter\greeknumeral\expandafter{\the\year}}}

\def\gr@@numeral#1{\mbox{%
  \ifnum#1<\@ne\space\gr@ill@value{#1}%
  \else
    \ifnum#1<10\relax\expandafter\gr@num@i\number#1%
    \else
      \ifnum#1<100\relax\expandafter\gr@num@ii\number#1%
      \else
        \ifnum#1<\@m\relax\expandafter\gr@num@iii\number#1%
        \else
          \ifnum#1<\@M\relax\expandafter\gr@num@iv\number#1%
          \else
            \ifnum#1<100000\relax\expandafter\gr@num@v\number#1%
            \else
              \ifnum#1<1000000\relax\expandafter\gr@num@vi\number#1%
              \else
                \space\gr@ill@value{#1}%
              \fi
            \fi
          \fi
        \fi
      \fi
    \fi
  \fi
}}
\def\gr@num@i#1{%
  \ifcase#1\or a\or b\or g\or d\or e%
  \or \s@i\or z\or h\or j\fi
  \ifnum#1=\z@\else\anw@true\fi\anw@print}
\def\gr@num@ii#1{%
  \ifcase#1\or i\or k\or l\or m\or n%
  \or x\or o\or p\or \n@vanta\fi
  \ifnum#1=\z@\else\anw@true\fi\gr@num@i}
\def\gr@num@iii#1{%
  \ifcase#1\or r\or s\or t\or u\or f%
  \or q\or y\or w\or \n@vecento\fi
  \ifnum#1=\z@\anw@false\else\anw@true\fi\gr@num@ii}
\def\gr@num@iv#1{%
  \ifnum#1=\z@\else\katwtonos\fi
  \ifcase#1\or a\or b\or g\or d\or e%
  \or \s@i\or z\or h\or j\fi
  \gr@num@iii}
\def\gr@num@v#1{%
  \ifnum#1=\z@\else\katwtonos\fi
  \ifcase#1\or i\or k\or l\or m\or n%
  \or x\or o\or p\or \n@vanta\fi
  \gr@num@iv}
\def\gr@num@vi#1{%
  \katwtonos
  \ifcase#1\or r\or s\or t\or u\or f%
  \or q\or y\or w\or \n@vecento\fi
  \gr@num@v}
\ifGreekTimes
\DeclareTextCommand{\Vmiria}{LGR}{{\txbfamily\char5}}
\DeclareTextCommand{\Vkilo}{LGR}{{\txbfamily\char4}}
\DeclareTextCommand{\Vetto}{LGR}{{\txbfamily\char3}}
\DeclareTextCommand{\Vdeka}{LGR}{{\txbfamily\char2}}
\else
\DeclareTextSymbol{\Vmiria}{LGR}{5}
\DeclareTextSymbol{\Vkilo}{LGR}{4}
\DeclareTextSymbol{\Vetto}{LGR}{3}
\DeclareTextSymbol{\Vdeka}{LGR}{2}
\fi
\newcommand*\attic@ill@value[1]{\PackageWarning{dictionaryDC}{%
Illegal value (\number#1) for \string\ActicNumeral\space}}
\DeclareRobustCommand*\AtticNumeral[1]{%
\ifnum#1<\@ne \attic@ill@value{#1}\else
  \ifnum#1>99999\relax \attic@ill@value{#1}\else
    \AtticCycl@{#1}
  \fi
\fi}

\def\AtticCycl@#1{%
    \bgroup
    \countdef\valore=252\countdef\cifra=250\relax
    \valore=#1\relax
    \cifra=\valore \divide\cifra10000\relax
    \valore=\numexpr\valore-\cifra*10000\relax
    \ifnum\cifra>4\relax\Vmiria \advance\cifra-5\fi
       \@whilenum\cifra>\z@\do{M\advance\cifra\m@ne}%
    \cifra=\valore \divide\cifra1000\relax
    \valore=\numexpr\valore-\cifra*1000\relax
    \ifnum\cifra>4\relax\Vkilo \advance\cifra-5\fi
       \@whilenum\cifra>\z@\do{Q\advance\cifra\m@ne}%
    \cifra=\valore \divide\cifra100\relax
    \valore=\numexpr\valore-\cifra*100\relax
    \ifnum\cifra>4\relax\Vetto \advance\cifra-5\fi
       \@whilenum\cifra>\z@\do{H\advance\cifra\m@ne}%
    \cifra=\valore \divide\cifra10\relax
    \valore=\numexpr\valore-\cifra*10\relax
    \ifnum\cifra>4\relax\Vdeka \advance\cifra-5\fi
       \@whilenum\cifra>\z@\do{D\advance\cifra\m@ne}%
    \cifra=\valore
    \ifnum\cifra>4\relax P\advance\cifra-5\relax\fi
       \@whilenum\cifra>\z@\do{I\advance\cifra\m@ne}%
    \egroup}

\frenchspacing
%\RequirePackage{fixltx2e}
\ifdefined\@math@@comma
   \AfterEndPreamble{\IntelligentComma}%
\else
   \DeclareMathSymbol{\virgola}{\mathpunct}{letters}{"3B}
   \DeclareMathSymbol{\virgoladecimale}{\mathord}{letters}{"3B}
   \DeclareMathSymbol{\plaindot}{\mathord}{letters}{"3A}
   \AtBeginDocument{\AfterEndPreamble{%
      \unless\ifnum\language=\l@english\mathcode`\,="8000\fi}}
   {\catcode`\,=\active \gdef,{\futurelet\let@token\m@thcomma}}
   \def\m@thcomma{\let\@tempB\virgola
   \@tfor\@tempA:=0123456789\do{%
  \expandafter\ifx\@tempA\let@token\let\@tempB\virgoladecimale
  \@break@tfor\fi}\@tempB}
\fi

\RequirePackage{amsmath,amssymb,delarray}
\ifdim\overfullrule>\z@
\RequirePackage[draft]{graphicx}
\else
\RequirePackage{graphicx}
\fi
\RequirePackage{captcont}
\RequirePackage{xcolor}
\RequirePackage{afterpage}
\RequirePackage{eso-pic}

\RequirePackage{varioref}
\RequirePackage{longtable}
\RequirePackage{paralist}
\RequirePackage{textcomp}
\RequirePackage{wasysym}
\RequirePackage[varg]{txfonts}
%\RequirePackage[squaren,cdot,binary,noams,derivedinbase,derived]{SIunits}
\RequirePackage{siunitx}
\ifDebug\RequirePackage{trace}\fi
\RequirePackage{microtype}
\RequirePackage{framed}
\RequirePackage{colortbl}
\RequirePackage{booktabs}
\RequirePackage{marvosym}
\let\possiblysortindexfiles\relax
\let\diz@printindex\printindex
\renewcommand\printindex{\onecolumn\diz@printindex}

\graphicspath{{Figure/}}
\RequirePackage{multicol}
\RequirePackage{marginnote}
\renewcommand*{\raggedleftmarginnote}{\raggedright}
\renewcommand*{\raggedrightmarginnote}{\raggedleft}
\deffootnote[1em]{\z@}{\z@}{\hfill\thefootnotemark.\enspace}
\renewcommand\section{\@startsection{section}{1}{\z@}%
  {-2.25ex\@plus -1ex \@minus -.2ex}%
  {-1em}%
  {\ifnum \scr@compatibility>\@nameuse{scr@v@2.96}\relax
          \setlength{\parfillskip}{\z@ plus 1fil}\fi
    \raggedsection\normalfont\sectfont\nobreak\size@subsection
  }%
}
\let\size@section\normalsize
\@at@twocolumntrue
\renewcommand*\chapterformat{}
\renewcommand*\chaptermarkformat{}
\def\size@chapter{\fontsize{40}{40}\selectfont}
\renewcommand*\chapterheadstartvskip{\vspace*{-1.5\baselineskip}}
\renewcommand*{\chaptermark}[1]{}%
\providecommand*\currentlemma{}%
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{\chapterpagestyle}%
  \global\@topnum\z@
  \let\currentlemma\empty
  \@afterindentfalse
  \secdef\@chapter\@schapter
}

\newcommand*\unghia{}

\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \fi
  \chaptermark{}%
  \if@twocolumn
    \if@at@twocolumn
      \@makechapterhead{#2}%
    \else
      \@topnewpage[\@makechapterhead{#2}]%
    \fi
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi
  \label{chap:#1}%
  \def\unghia{#1}%
}

\newlength\abovesectionskip \abovesectionskip=3.5ex \@plus 1ex \@minus .2ex
\newlength\belowsectionskip \belowsectionskip=2.3ex \@plus.2ex

\renewcommand\section{\scr@startsection{section}{1}{\z@}%
  {-\abovesectionskip}%
  {\belowsectionskip}%
  {\ifnum \scr@compatibility>\@nameuse{scr@v@2.96}\relax
    \setlength{\parfillskip}{\z@ plus 1fil}\fi
    \raggedsection\normalfont\sectfont\nobreak\size@section}%
}
\renewcommand\subsection{\scr@startsection{subsection}{1}{\z@}%
	{-\abovesectionskip}%
	{\belowsectionskip}%
	{\ifnum \scr@compatibility>\@nameuse{scr@v@2.96}\relax
		\setlength{\parfillskip}{\z@ plus 1fil}\fi
		\raggedsection\normalfont\itshape\nobreak\size@section}%
}
\newcommand\lemma[2][]{%
\ifx\currentlemma\empty\def\currentlemma{#2}\fi
\markboth{\currentlemma}{\currentlemma}% before "section" is called
\ifblank{#1}{%
   \section*{#2}\phantomsection\label{lm@#2}%
}{%
   \section*{\texorpdfstring{#2}{#1}}\phantomsection\label{lm@#1}%
}
\markboth{#2}{#2}% after the entry title is printed
\def\currentlemma{#2}\ignorespaces}
\let\paragraph\lemma\let\entry\lemma

\newcommand\sublemma[2][]{%
	\ifblank{#1}{%
		\subsection*{#2}\phantomsection\label{lm@#2}%
	}{%
		\subsection*{\texorpdfstring{#2}{#1}}\phantomsection\label{lm@#1}%
	}
\ignorespaces
}
\newcommand\llemma[2][]{%
	\ifblank{#1}{%
		{\bfseries\,//~#2\,}\label{lm@#2}%
	}{%
		{\bfseries\,//~#2\,}\label{lm@#1}%
	}%
}

\newcommand*\vedilemma[2][]{%
\ifblank{#1}{\hyperref[lm@#2]{#2}}{\hyperref[lm@#1]{#2}}}
\let\seeentry\vedilemma
\newcommand*\equref[2][]{\ifcsdef{r@#2}{%
\ifblank{#1}{%
    \edef\lemm@ref{\expandafter\LemmaEqu\csname r@#2\endcsname}%
}{%
    \edef\lemm@ref{#1}%
}%
\def\strip@ftercomma ##1,##2\@nil{##1}%
\edef\lemmaref{\expandafter\strip@ftercomma\lemm@ref,\@nil}%
\edef\argomentoperhyperref{[lm@\lemm@ref]{\lemmaref}}%
\textbf{\autoref{#2}} \ofentry\
        \textbf{\expandafter\hyperref\argomentoperhyperref}%
}{??}}
\def\diz@thirdoffive#1#2#3#4#5{#3}
\def\diz@secondoffive#1#2#3#4#5{#2}
\def\diz@firstoffive#1#2#3#4#5{#1}
\def\NumeroEqu#1{\ifx#1\relax ??\else\expandafter\diz@firstoffive#1\fi}
\def\PaginaEqu#1{\ifx#1\relax ??\else\expandafter\diz@secondoffive#1\fi}
\def\LemmaEqu#1{\ifx#1\relax ??\else\expandafter\diz@thirdoffive#1\fi}
\DeclareFixedFont{\largefont}{T1}{txr}{m}{n}{42}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\drop#1#2{{\noindent
    \setbox0\hbox{\largefont #1}\setbox1\hbox{#2}\setbox2\hbox{(}%
    \count0=\ht0\advance\count0 by\dp0\count1\baselineskip
    \advance\count0 by-\ht1\advance\count0by\ht2
    \dimen1=.5ex\advance\count0by\dimen1\divide\count0 by\count1
    \advance\count0 by1\dimen0\wd0
    \advance\dimen0 by.25em\dimen1=\ht0\advance\dimen1 by-\ht1
    \global\hangindent\dimen0\global\hangafter-\count0
    \hskip-\dimen0\setbox0\hbox to\dimen0{\raise-\dimen1\box0\hss}%
    \dp0=0in\ht0=0in\box0}#2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\pareggia{%
  \ifvmode
    \vfill
    \penalty -\@M%
  \else
    \@bsphack
    \vadjust{\vspace{\z@\@plus1fill}\penalty -\@M}%
    \@esphack
  \fi}
\let\balance\pareggia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*\versal[1]{\drop{#1}{\relax}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{rosellino}{rgb}{1,0.75,0.75}
\definecolor{lightrose}{rgb}{1,0.75,0.75}
\definecolor{verzolino}{rgb}{0.75,1,0.75}
\definecolor{lightgreen}{rgb}{0.75,1,0.75}
\definecolor{celeste}{rgb}{0.75,0.9,1}
\definecolor{lightcyan}{rgb}{0.75,0.9,1}
\definecolor{rossovivo}{rgb}{0.7,0.2,0.2}
\definecolor{strongred}{rgb}{0.7,0.2,0.2}
\definecolor{verdeguit}{rgb}{0,0.6,0}
\definecolor{GuITgreen} {rgb}{0,0.6,0}
\definecolor{gray6}{gray}{.4}
\definecolor{gray3}{gray}{.3}
\definecolor{giallo}{rgb}{0.9,0.9,0.}
\definecolor{yellow}{rgb}{0.9,0.9,0.}
\definecolor{shadecolor}{rgb}{.95,.90,.60}
\definecolor{LightRed}{rgb}{1,.70,.70}
\definecolor{LightYellow}{rgb}{.90,.85,.55}
\definecolor{LightGray}{rgb}{.90,.90,.90}
\definecolor{MediumGray}{rgb}{.70,.70,.70}
\definecolor{DarkGray}{rgb}{.50,.60,.70}
\definecolor{StrongGray}{rgb}{.10,.20,.30}
\definecolor{DarkBlue}{rgb}{0,0,0.9}
\definecolor{azzurrino}{rgb}{0.8,0.8,1}
\definecolor{lightblue}{rgb}{0.8,0.8,1}
\definecolor{giallochiarissimo}{rgb}{1,0.98,0.86}
\definecolor{verylightyellow}{rgb}{1,0.98,0.86}
\definecolor{aranciochiarissimo}{rgb}{1,0.88,0.71}
\definecolor{verylightorange}{rgb}{1,0.88,0.71}
\definecolor{paglierino}{rgb}{0.99,1,0.60}
\definecolor{straw}{rgb}{0.99,1,0.60}
\definecolor{giallochiaro}{rgb}{0.99,1,0.64}
\definecolor{lightyellow}{rgb}{0.99,1,0.64}
\definecolor{giallocarico}{rgb}{0.99,1,0.35}
\definecolor{strongyellow}{rgb}{0.99,1,0.35}
\RequirePackage[colorlinks,linkcolor=red,citecolor=verdeguit,%
                urlcolor=DarkBlue,hyperindex]{hyperref}
\addto\extrasenglish{\def\sectionautorefname{entry}%
\def\paragraphautorefname{entry}%
\def\ofentry{sub entry}}

\addto\extrasitalian{\def\sectionautorefname{lemma}%
\def\paragraphautorefname{lemma}%
\def\equationautorefname{equazione}%
\def\ofentry{\emph{sub} lemma}}
\addto\extrasfrench{\def\sectionautorefname{article}%
\def\paragraphautorefname{article}%
\def\equationautorefname{\'equation}%
\def\ofentry{sous l'article}}
\addto\extrasgerman{\def\sectionautorefname{Stichwort}% Verificare genere
\def\paragraphautorefname{Stichwort}%
\def\ofentry{unten das Stichwort}}
\addto\extraslatin{\def\sectionautorefname{lemma}%
\def\paragraphautorefname{lemma}%
\def\equationautorefname{equationis}% "equationem"?
\def\ofentry{sub lemmate}}
\addto\extrasancientgreek{% "monotoniko spelling"?
\def\sectionautorefname{e\>'isodos}%
\def\paragraphautorefname{e\>'isodos}%
\def\equationautorefname{>exomo'iwsh}%
\def\ofentry{<up`o t`on e\>'isodon}}

\newcommand*\getcorrectrightmark{\let\protect\noexpand
\edef\@tempA{\expandafter\@leftmark\topmark\@empty\@empty}%
\edef\@tempB{\expandafter\@leftmark\botmark\@empty\@empty}%
\let\protect\relax\ifx\@tempA\@tempB\leftmark\else\rightmark\fi}
\def\ps@dizionario{\let\@mkboth\@gobbletwo
  \let\chaptermark\@gobble \let\sectionmark\@gobble
  \def\@oddhead{\underline{\makebox[\textwidth]{\strut
    \bfseries\makebox[\z@][l]{\getcorrectrightmark}\hfill
    \thepage\hfill\makebox[\z@][r]{\leftmark}\begin{picture}(0,0)%
    \put(20,-2){\makebox(0,0)[lb]{\HUGE\sffamily\mdseries\unghia}}%
    \end{picture}}}}%
  \def\@evenhead{\underline{\makebox[\textwidth]{%
    \begin{picture}(0,0)\put(-20,-2){\makebox(0,0)[rb]{\HUGE\sffamily
    \mdseries\unghia}}\end{picture}\strut\bfseries\makebox[\z@][l]%
    {\getcorrectrightmark}\hfill\thepage\hfill\makebox[\z@][r]{\leftmark}}}}%
  \def\@oddfoot{}%
  \def\@evenfoot{}%
}
\let\ps@dictionary\ps@dizionario
\renewcommand*\mainmatter{%
  \if@twoside\cleardoubleoddpage\else\clearpage\fi
  \@mainmattertrue\pagenumbering{arabic}%
  \pagestyle{dictionary}%
  \renewcommand*\chapterpagestyle{dictionary}%
  \twocolumn
}
\renewcommand*\backmatter{%
  \if@openright\cleardoubleoddpage\else\clearpage\fi\@mainmatterfalse
  \pagestyle{headings}
  \renewcommand*\chapterpagestyle{plain}
}
\providecommand{\@removefromreset}[2]{{%
  \expandafter\let\csname c@#1\endcsname\@removefromreset
  \def\@elt##1{%
    \expandafter\ifx\csname c@##1\endcsname\@removefromreset
    \else
      \noexpand\@elt{##1}%
    \fi}%
  \expandafter\xdef\csname cl@#2\endcsname{%
    \csname cl@#2\endcsname}}}
\@removefromreset{equation}{chapter}
\@addtoreset{equation}{section}
\@removefromreset{footnote}{chapter}
\@addtoreset{footnote}{section}
\renewcommand*\theequation{\@arabic{\c@equation}}
\renewcommand*\thefigure{\@arabic{\c@figure}}
\renewcommand*\thetable{\@arabic{\c@table}}
\textfloatsep=\intextsep
\dbltextfloatsep=\intextsep
\renewcommand*{\othersectionlevelsformat}[1]{}%
\addtokomafont{caption}{\small}
\setlength{\abovecaptionskip}{\medskipamount}
\setlength{\belowcaptionskip}{\z@}
\newskip\vercapskip
\newcommand\scaption[2][]{\def\sc@ption{#1}%
\renewcommand*{\figureformat}{}%
\renewcommand*{\tableformat}{}%
\setlength{\belowcaptionskip}{\medskipamount}%
\renewcommand*{\captionformat}{}%
\ifx\sc@ption\@empty\caption{#2}\else\caption[#1]{#2}\fi}
\newcommand\scaptiona[2][]{\def\sc@ptiona{#1}%
\renewcommand*{\figureformat}{}%
\renewcommand*{\tableformat}{}%
\renewcommand*{\captionformat}{\DOWNarrow\quad}%
\small\vercapskip\dimexpr\ht\strutbox-1ex\relax
\vspace*{\vercapskip}%
\ifx\sc@ptiona\@empty\captionabove{#2}\else\captionabove[#1]{#2}\fi}
\newcommand\scaptionb[2][]{\def\sc@ptionb{#1}%
\renewcommand*{\figureformat}{}%
\renewcommand*{\tableformat}{}%
\renewcommand*{\captionformat}{\UParrow\quad}%
\small\vercapskip\dp\strutbox
\ifx\sc@ptionb\@empty\captionbelow{#2}\else\captionbelow[#1]{#2}\fi
\vspace*{-\vercapskip}}
\DeclareRobustCommand*\rigaalta{\mbox{}\par\noindent
  \raisebox{0.3ex}[0pt][0pt]{\rule{\columnwidth}{0.2ex}}\par}
  \let\upperline\rigaalta
\DeclareRobustCommand*\rigabassa{\par\noindent
  \raisebox{0.9ex}[0pt][0pt]{\rule{\columnwidth}{0.2ex}}\par}
  \let\lowerline\rigabassa
\newcommand*\titoletto[1]{\par\noindent
  \hspace{4mm}\RIGHTarrow\space\textit{#1}}
  \let\mtssubtitle\titoletto
 \newcommand*\titolettoa[1]{\noindent
 	\hspace{4mm}\RIGHTarrow\space\textit{#1}}
\newcommand*\titolo[1]{\par\noindent
  \hspace{1.5mm}\rule{1.6mm}{1.6mm}\enspace\textit{#1}}
  \let\mttitle\titolo
\newcommand*\titolino[1]{\par\noindent
 \hspace{2mm}\textbullet\enspace\textit{#1}}
 \let\mtsubtitle\titolino

\newenvironment{minitoc}{%
\list{}{\topsep\z@\itemsep\z@\parsep\z@\leftmargin\z@\rightmargin\z@
\labelsep\z@\itemindent\z@\listparindent\z@}%
\item\minipage{\columnwidth}\vspace*{-.6\baselineskip}\rigaalta
}{%
\rigabassa\endminipage\endlist
}
\let\miniindice\minitoc
\let\endminiindice\endminitoc
\newcommand*\gradi{\textormath{\textdegree}{^\circ}}
%%%%%aggiunta mia
\newcommand*\minuti{\textormath{\arcminute}{^{'}}}
\newcommand*\secondi{\textormath{\arcsecond}{^{''}}}
\let\degr\gradi
\parindent=\z@
\def\diff{\mathop{}\mathclose{\mathrm{d}}}
\newcommand\BackgroundPicture[2]{%
  \setlength{\unitlength}{1pt}%
   \put(-9,\strip@pt\paperheight){%
  \parbox[t][\paperheight][c]{\paperwidth}{%
    \centering\includegraphics[angle=#2,width=\paperwidth]{#1}\par
}}}%
\newcommand*{\pointsto}{\textrightarrow}\let\freccia\pointsto
\newcommand*{\longpointsto}{$\longrightarrow$}\let\freccialunga\longpointsto
\newcommand*\Endash{\textrm{\ \textendash\ }}
\newcommand\insertremark[1]{\textendash\,#1\,\textendash}
\let\inciso\insertremark
\def\possiblysortindexfiles{\immediate\closeout\@indexfile
\immediate\write18{makeindex -s indice.ist \jobname.idx}}

\makeindex

\providecommand\printindex{%
\IfFileExists{\jobname.ind}{\onecolumn\input{\jobname.ind}}%
  {\ClassWarning{dictionarySRC}{File \jobname.ind is not available}}}
\renewenvironment{theindex}
   {\let\@chapapp\empty
\let\thechapter\relax
        \def\see##1##2{\emph{\seename} ##1}
\chapter*{\HUGE\indexname}%
\@mkboth{\indexname}{\indexname}%
\thispagestyle{plain}\parindent\z@
\parskip\z@ \@plus .3\p@\relax
\columnseprule \z@
\columnsep 15\p@
\raggedright
\let\item\@idxitem
\begin{multicols}{2}}
   {\end{multicols}\clearpage}
\renewcommand\cleardoublepage[1][plain]{%
\clearpage\ifodd\value{page}\else\thispagestyle{#1}\null\clearpage\fi}

\AtEndOfClass{\AfterEndPreamble{%
\ifnum\language=\csname l@italian\endcsname
   %\bibliographystyle{plain_ital}%
\fi}}
\renewenvironment{thebibliography}[1]{%
\chapter*{\HUGE \bibname}
\markboth{\bibname}{\bibname}
\thispagestyle{plain}
  \list{%
    \@biblabel{\@arabic\c@enumiv}%
  }{%
    \settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand*\theenumiv{\@arabic\c@enumiv}%
  }%
  \sloppy\clubpenalty4000 \widowpenalty4000
  \sfcode`\.=\@m\raggedright
}{%
  \def\@noitemerr{%
    \@latex@warning{Empty `thebibliography' environment}%
  }%
  \endlist
}
\newlength\widet@ble
\newlength\wid@t@ble
\newlength\widet@blesh
\newbox\widebox
\newcommand\SetTableIntfoExternalColumn[1]{%
\begingroup
    \widet@ble=\dimexpr\columnwidth+\marginparsep+\marginparwidth\relax
    \begin{lrbox}{\widebox}\let\caption\@gobble
    \let\label\@gobble#1\relax
    \end{lrbox}%
    \ifdim\wd\widebox>\widet@ble
       \ClassWarning{dictionaryDC}{The hanging table is too wide!}
       \wid@t@ble=\widet@ble
       \widet@blesh=\z@
    \else
       \wid@t@ble=\wd\widebox
       \widet@blesh=\dimexpr\widet@ble -\wid@t@ble\relax
    \fi
    \setbox\widebox\vtop{\hsize\wid@t@ble\parindent\z@
    \textwidth=\hsize\columnwidth=\hsize\linewidth=\hsize
    \def\@captype{table}\vspace*{2ex}\hrule
    \vskip-.5\abovecaptionskip\relax#1\par\hrule\vspace*{1ex}}%
    \rule[\dp\widebox]{\z@}{\z@}% strut
    \marginnote
    [\mbox{}\hspace*{.4em}\hspace*{\widet@blesh}\rlap{\box\widebox}]%
    {\mbox{}\llap{\box\widebox}\hspace*{.4em}\hspace*{\widet@blesh}}%
    [-\dp\widebox]%
\endgroup}
\newcount\t@bella \t@bella=\z@
\newcount\p@gina
\def\PaginaTabella#1{\ifx#1\relax\value{page}\else
\expandafter\diz@secondoffive#1\fi}
\newenvironment{Wtabular}[2][c]{%
   \widet@ble\linewidth
   \advance\widet@ble\columnsep
   \advance\widet@ble\marginparwidth
   \global\advance\t@bella\@ne
   \edef\@tempB{dzt@\the\t@bella}%
   \expandafter\label\expandafter{\@tempB}%
   \begin{lrbox}{\widebox}%
   \begin{tabular}{#2}%
   }{%
   \end{tabular}\end{lrbox}%
   \p@gina=
      \expandafter\PaginaTabella%
            \expandafter{\csname r@\@tempB\endcsname}\relax
   \ifodd\p@gina
     \def\@tempA{l}
   \else
     \def\@tempA{r}
   \fi
   \ifdim\wd\widebox>\widet@ble
      \ClassWarning{dictionaryDC}{Table is too wide!}%
   \fi
   \makebox[\columnwidth][\@tempA]{\box\widebox}%
   \ignorespaces}

\newenvironment{shadedtabular}[1][straw]{% "paglierino"
\setlength{\FrameSep}{0pt}%
\def\FrameCommand{\fboxsep=\FrameSep \colorbox{#1}}% from "shaded"
\setbox254\hbox\bgroup\tabular}{%
\endtabular\egroup
\centering
\begin{MakeFramed}{\hsize\wd254 \FrameRestore}%
\box254\relax
\end{MakeFramed}\vspace*{-.75\baselineskip}\ignorespacesafterend}%

\newenvironment{shadedWtabular}[2][straw]{% "paglierino"
   \setlength{\FrameSep}{0pt}%
   \def\FrameCommand{\fboxsep=\FrameSep \colorbox{#1}}% from "shaded"
   \widet@ble\linewidth
   \advance\widet@ble\columnsep
   \advance\widet@ble\marginparwidth
   \global\advance\t@bella\@ne
   \edef\@tempB{dzt@\the\t@bella}%
   \expandafter\label\expandafter{\@tempB}%
   \begin{lrbox}{\widebox}%
   \begin{tabular}{#2}%
   }{%
   \end{tabular}\end{lrbox}%
   \p@gina=\expandafter\PaginaTabella
                       \expandafter{\csname r@\@tempB\endcsname}\relax
   \ifodd\p@gina
     \def\@tempA{l}%
   \else
     \def\@tempA{r}%
   \fi
   \ifdim\wd\widebox>\widet@ble
      \ClassWarning{dictionaryDC}{Table is too wide!}%
   \fi
   \setbox254\vbox{\hsize\wd\widebox
   \begin{MakeFramed}{\hsize\wd\widebox \FrameRestore}%
     \box\widebox\end{MakeFramed}\vspace*{-.75\baselineskip}}%
   \makebox[\columnwidth][\@tempA]{\box254}%
   \ignorespacesafterend}

\newenvironment{cataloghi}{\clearpage
\pagestyle{myheadings}%
\@at@twocolumnfalse
\if@twocolumn
\@restonecolfalse
\onecolumn
\else
\@restonecoltrue
\fi
}{\if@restonecol\onecolumn\else\twocolumn\@at@twocolumntrue\fi}
\let\catalogs\cataloghi
\let\endcatalogs\endcataloghi

\newcommand\insertcatalog[3][]{\clearpage
\begingroup
\markboth{#3}{#3}
\def\@tempB{#1}\ifx\@tempB\empty
    \def\RCi{\relax}\let\RCuno\RCi%
    \def\RCii{\relax}\let\RCdue\RCii%
    \def\RCiii{\relax}\let\RCtre\RCiii%
    \def\RCiv{\relax}\let\RCquattro\RCiv%
    \def\CCyellow{\relax}\let\CCgialla\CCyellow%
    \def\CCYellow{\relax}\let\CCgiallone\CCYellow
    \let\RCodd\relax \let\RCdispari\RCodd
    \let\RCeven\RCiv \let\RCpari\RCeven
    \let\CC\CCYellow
    \newcolumntype{L}{l}%
    \newcolumntype{R}{r}%
    \newcolumntype{C}{c}%
    \newcolumntype{M}{>{$}r<$}%
    \newcolumntype{A}{>{\RA}r}%
    \newcolumntype{B}{>{$}l<$}%
\else
    \def\RCi{\rowcolor{azzurrino}}\let\RCuno\RCi%
    \def\RCii{\rowcolor{giallochiarissimo}}\let\RCdue\RCii%
    \def\RCiii{\rowcolor{aranciochiarissimo}}\let\RCtre\RCiii%
    \def\RCiv{\rowcolor{paglierino}}\let\RCquattro\RCiv%
    \def\CCyellow{\cellcolor{giallochiaro}}\let\CCgialla\CCyellow%
    \def\CCYellow{\cellcolor{giallocarico}}\let\CCgiallone\CCYellow
    \let\RCodd\relax \let\RCdispari\RCodd
    \let\RCeven\RCiv \let\RCpari\RCeven
    \let\CC\CCYellow
    \newcolumntype{L}{>{\columncolor{giallochiarissimo}}l}%
    \newcolumntype{R}{>{\columncolor{giallochiarissimo}}r}%
    \newcolumntype{C}{>{\columncolor{giallochiarissimo}}c}%
    \newcolumntype{M}{>{\columncolor{giallochiarissimo}$}r<$}%
    \newcolumntype{A}{>{\columncolor{giallochiarissimo}\RA}r}%
    \newcolumntype{B}{>{\columncolor{giallochiarissimo}$}l<$}%
\fi
\tabcolsep=5.6pt
\edef\Tstrut{\vrule\@height\dimexpr\ht\strutbox+2\p@\relax\@width\z@}
\edef\Bstrut{\vrule\@depth\dimexpr\dp\strutbox+2\p@\relax\@width\z@}
\edef\TBstrut{\vrule\@depth\dimexpr\dp\strutbox+2\p@\relax
\@height\dimexpr \ht\strutbox+2\p@\relax\@width\z@}
\belowrulesep\z@ \aboverulesep\z@
\input{#2}
\endgroup}

\def\RA#1 #2 {% don't delete the space in front of the open brace
\begingroup
\countdef\ore 254\relax \countdef\minuti 252\relax
\countdef\decimi 250\relax
\let\ignorespaces\empty
\edef\@tempa{#1}
\ifnum\language=\l@english
  \unit{\expandafter\ore\@tempa\relax
    \ifnum\ore=\z@00\else
    \ifnum\ore>9\relax\else0\relax\fi\number\ore\fi}{\hour}\space
  \unit{\@tempdima#2\p@\edef\@tempa{\strip@pt\@tempdima}%
    \expandafter\split@dec\@tempa..\relax
    \ifnum\minuti=0\relax00\else
    \ifnum\minuti>9\relax\else0\relax\fi\number\minuti\fi\dizdecsep%
    \number\decimi}{\minute}
\else
\expandafter\ore\@tempa\relax
\ifnum\ore=\z@00\else
\ifnum\ore>9\relax\else0\relax\fi\number\ore\fi\unit{h}\space
\@tempdima#2\p@\edef\@tempa{\strip@pt\@tempdima}%
\expandafter\split@dec\@tempa..\relax
\ifnum\minuti=0\relax00\else
\ifnum\minuti>9\relax\else0\relax\fi\number\minuti\fi\dizdecsep%
    \number\decimi\unit{min}%
\fi
\endgroup}
\let\AR\RA
\def\split@dec#1.#2.#3\relax{\minuti=#1\relax \def\@tempb{#2}%
\ifx\@tempb\empty\decimi=0\else
\decimi=#2\relax\fi}
\AtEndOfClass{\AfterEndPreamble{%
\edef\dizdecsep{%
\ifnum\language=\l@english{\noexpand\ensuremath{\plaindot}}\else{,}\fi}}}%
%% 
%% Copyright 2011-2016 Claudio Beccari, Heinrich Fleck
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "author-maintained"
%% 
%% This work consists of this file dictionaryDC.dtx, a README file
%% and the derived files dictionaryDC.cls and dictionaryDC.pdf.
%% 
%%
%% End of file `dictionaryDC.cls'.
