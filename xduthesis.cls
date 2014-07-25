%%
%% This is file `xduthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xduthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2008-2014 by Fei Qi <fred.qi@ieee.org>
%% 
%% This file may be distributed and/or modified under the conditions of the LaTeX
%% Project Public License, either version 1.3a of this license or (at your option)
%% any later version. The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% \iffalse
%%  Local Variables:
%%  mode: doctex
%%  TeX-master: t
%%  End:
%% \fi
%% \iffalse meta-comment
%%
%% Copyright (C) 2008-2014 by Fred Qi <fred.qi@gmail.com>
%%
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%%
%% http://www.latex-project.org/lppl.txt
%%
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%%
%% \fi

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{xduthesis}
[2009/06/06 0.2 Xidian University Thesis Template]
\hyphenation{XD-Thesis}
\def\xduthesis{\textsc{Xduthesis}}
\def\version{0.9.9}
\newif\ifxdu@bachelor\xdu@bachelorfalse
\newif\ifxdu@master\xdu@masterfalse
\newif\ifxdu@doctor\xdu@doctorfalse
\newif\ifxdu@secret\xdu@secretfalse
\newif\ifxdu@english\xdu@englishfalse
\newif\ifxdu@mkabstract\xdu@mkabstractfalse
\newif\ifxdu@print\xdu@printfalse
\newif\ifxdu@msfonts\xdu@msfontsfalse
\DeclareOption{bachelor}{\xdu@bachelortrue}
\DeclareOption{master}{\xdu@mastertrue}
\DeclareOption{doctor}{\xdu@doctortrue}
\DeclareOption{secret}{\xdu@secrettrue}
\DeclareOption{english}{\xdu@englishtrue}
\DeclareOption{print}{\xdu@printtrue}
\DeclareOption{msfonts}{\xdu@msfontstrue}
\DeclareOption{adobefonts}{\xdu@msfontsfalse}
\AtEndOfClass{%
  \ifxdu@bachelor\relax\else
    \ifxdu@master\relax\else
      \ifxdu@doctor\relax\else
        \ClassError{xduthesis}%
                   {Please specify a thesis option: bachelor, master or doctor.}{}
      \fi
    \fi
  \fi}
\ExecuteOptions{}
\ProcessOptions
\ifxdu@print
\LoadClass[12pt, a4paper, openright]{book}
\else
\LoadClass[12pt, a4paper, openany]{book}
\fi
\RequirePackage{calc}
\RequirePackage[numbers,super,sort&compress]{natbib}
\ifxdu@print
\RequirePackage[xetex,colorlinks=true,allcolors=black]{hyperref}
\else
\RequirePackage[xetex,colorlinks=true]{hyperref}
\fi
\RequirePackage{indentfirst}
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{amsmath, amssymb}
\RequirePackage{graphicx}
\RequirePackage{subfig}
\RequirePackage[normalem]{ulem}
\RequirePackage{ifthen}
\RequirePackage{titlesec,titletoc}
\RequirePackage[CJKnumber,BoldFont]{xeCJK}
\punctstyle{quanjiao}
\def\CJK@null{\kern\CJKnullspace\Unicode{48}{7}\kern\CJKnullspace}
\defaultfontfeatures{Mapping=tex-text} % after fontspec
\ifxdu@msfonts
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{KaiTi_GB2312}
\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{fs}{FangSong_GB2312}
\setCJKfamilyfont{kai}{KaiTi_GB2312}
\setCJKfamilyfont{li}{Adobe Kaiti Std}
\setCJKfamilyfont{you}{LiSu}
\else
\setCJKmainfont{Adobe Song Std}
\setCJKsansfont{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\fi
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}
\RequirePackage{xunicode,metalogo}
\renewcommand\frontmatter{%
  \xdu@clearpage%
  \@mainmatterfalse
  \ifxdu@doctor\pagenumbering{Roman}\else
    \ifxdu@master\pagenumbering{Roman}\else
      \pagenumbering{roman}
    \fi
  \fi
  \pagestyle{xdu@front}}
\renewcommand\mainmatter{%
  \xdu@clearpage
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{xdu@headings}}
\renewcommand\backmatter{%
  \xdu@clearpage
  \@mainmattertrue}
\newcommand{\song}{\CJKfamily{song}} % 宋体
\def\songti{\song}
\newcommand{\hei}{\CJKfamily{hei}} % 黑体
\def\heiti{\hei}
\newlength\xdu@linespace
\newcommand{\xdu@choosefont}[2]{%
   \setlength{\xdu@linespace}{#2*\real{#1}}%
   \fontsize{#2}{\xdu@linespace}\selectfont}
\def\xdu@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \xdu@choosefont{##1}{#2}}}
\xdu@define@fontsize{chuhao}{42bp}
\xdu@define@fontsize{xiaochu}{36bp}
\xdu@define@fontsize{yihao}{26bp}
\xdu@define@fontsize{xiaoyi}{24bp}
\xdu@define@fontsize{erhao}{22bp}
\xdu@define@fontsize{xiaoer}{18bp}
\xdu@define@fontsize{sanhao}{16bp}
\xdu@define@fontsize{xiaosan}{15bp}
\xdu@define@fontsize{sihao}{14bp}
\xdu@define@fontsize{banxiaosi}{13bp}
\xdu@define@fontsize{xiaosi}{12bp}
\xdu@define@fontsize{dawu}{11bp}
\xdu@define@fontsize{wuhao}{10.5bp}
\xdu@define@fontsize{xiaowu}{9bp}
\xdu@define@fontsize{liuhao}{7.5bp}
\xdu@define@fontsize{xiaoliu}{6.5bp}
\xdu@define@fontsize{qihao}{5.5bp}
\xdu@define@fontsize{bahao}{5bp}
\renewcommand\normalsize{\@setfontsize\normalsize{12bp}{18bp}}
\renewcommand\baselinestretch{1.2}
\setlength{\textwidth}{\paperwidth}
\setlength{\textheight}{\paperheight}
\setlength\marginparwidth{0cm}
\setlength\marginparsep{0cm}
\addtolength{\textwidth}{-6cm}
\setlength{\oddsidemargin}{4cm-1in-\hoffset}
\setlength{\evensidemargin}{2cm-1in}
\setlength{\topmargin}{2cm-1in-\voffset}
\setlength{\headheight}{20pt}
\setlength{\headsep}{3cm-1in-\voffset-\topmargin-\headheight}
\addtolength{\textheight}{-5.0cm}
\setlength{\footskip}{\paperheight-3cm-\textheight-1cm}
\def\xdu@clearpage{%
  \clearpage%
  \if@openright%
    \ifodd\c@page\relax\else%
      \null\thispagestyle{xdu@empty}\newpage%
    \fi%
  \fi}
\def\ps@xdu@empty{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}
\def\ps@xdu@foot@doctor{\vbox{\vskip10pt\rule{\textwidth}{1mm}%
    \vskip1pt\rule{\textwidth}{0.75pt}\vskip1pt%
    \hbox to\textwidth{\hfil{\xiaowu\ps@xdu@pagefoot}\hfil}}}
\def\ps@xdu@foot@master{\vbox{\hbox to\textwidth{\hfil{\xiaowu \thepage}\hfil}}}
\def\ps@xdu@front{%
  \def\@oddhead{\vbox{\hbox to\textwidth{\hfil{\xiaowu\leftmark}\hfil}%
      \vskip2pt\ifxdu@doctor\rule{\textwidth}{1mm}\vskip1pt\fi%
      \rule{\textwidth}{0.5pt}\vskip0.5pt\rule{\textwidth}{0.5pt}}}%
  \def\@evenhead{\vbox{\hbox to\textwidth{\hfil{\xiaowu\rightmark}\hfil}%
      \vskip2pt\ifxdu@doctor\rule{\textwidth}{1mm}\vskip1bp\fi%
      \rule{\textwidth}{0.5pt}\vskip0.5pt\rule{\textwidth}{0.5pt}}}%
  \def\@oddfoot{\ifxdu@doctor\ps@xdu@foot@doctor\else\ifxdu@master\ps@xdu@foot@master\fi}%
  \def\@evenfoot{\ifxdu@doctor\ps@xdu@foot@doctor\else\ifxdu@master\ps@xdu@foot@master\fi}}%
\def\ps@xdu@headings{%
  \def\@oddhead{\vbox{\hbox to\textwidth{\hfil{\xiaowu\leftmark}\hfil}%
      \vskip2pt\ifxdu@doctor\rule{\textwidth}{1mm}\vskip1pt\fi%
      \rule{\textwidth}{0.5pt}\vskip0.5pt\rule{\textwidth}{0.5pt}}}%
  \def\@evenhead{\vbox{\hbox to\textwidth{\hfil{\xiaowu\rightmark}\hfil}%
      \vskip2pt\ifxdu@doctor\rule{\textwidth}{1mm}\vskip1bp\fi%
      \rule{\textwidth}{0.5pt}\vskip0.5pt\rule{\textwidth}{0.5pt}}}%
  \def\@oddfoot{\ifxdu@doctor\ps@xdu@foot@doctor\else\ifxdu@master\ps@xdu@foot@master\fi\fi}%
  \def\@evenfoot{\ifxdu@doctor\ps@xdu@foot@doctor\else\ifxdu@master\ps@xdu@foot@master\fi\fi}}
\ifxdu@english
\renewcommand{\chaptermark}[1]{%
  \ifodd\c@page%
    \markboth{#1}{\xdu@etitle}%
  \else%
    \markboth{\xdu@etitle}{#1}%
  \fi}
\else
\renewcommand{\chaptermark}[1]{%
  \ifodd\c@page%
    \markboth{#1}{\xdu@ctitle}%
  \else%
    \markboth{\xdu@ctitle}{#1}%
  \fi}
\fi
\renewcommand{\sectionmark}[1]{}
\newlength\xdu@CJK@twochars
\newcommand{\xdu@unicode}[2]{\char\numexpr#1*256+#2\relax}
\def\xdu@CJK@space{\xdu@unicode{48}{7}}
\def\CJKindent{%
  \settowidth\xdu@CJK@twochars{\xdu@CJK@space\xdu@CJK@space}%
  \parindent\xdu@CJK@twochars}
\setlength{\parskip}{0pt \@plus2pt \@minus0pt}
\def\xdu@item@space{%
  \let\itemize\compactitem
  \let\enditemize\endcompactitem
  \let\enumerate\compactenum
  \let\endenumerate\endcompactenum
  \let\description\compactdesc
  \let\enddescription\endcompactdesc}

\renewcommand\chapter{%
  \xdu@clearpage%
  \if@mainmatter\thispagestyle{xdu@headings}%
  \else\thispagestyle{xdu@front}\fi%
  \phantomsection%
  \global\@topnum\z@%
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \if@mainmatter\refstepcounter{chapter}\fi
  \ifxdu@english%
  \addcontentsline{toc}{chapter}{\xiaosi\bfseries\@chapapp~#1}%
  \chaptermark{\@chapapp~#1}%
  \else%
  \addcontentsline{toc}{chapter}{\xiaosi\song\bfseries\@chapapp\hskip1ex#1}%
  \chaptermark{\@chapapp\hskip2ex#1}%
  \fi%
  \@makechapterhead{#2}}
\def\@makechapterhead#1{\noindent%
  \parbox[b]{\textwidth}{\vskip3mm}%
  {\centering \sanhao\song\bfseries%
    \ifnum \c@secnumdepth > \m@ne%
      \@chapapp\hskip1ex%
    \fi%
   \interlinepenalty\@M%
   #1\par\nobreak%
   \vskip1.5em%
   \nointerlineskip}}
\def\@schapter#1{%
  \addcontentsline{toc}{chapter}{\xiaosi\song\bfseries#1}%
  \chaptermark{#1}%
  \@makeschapterhead{#1}
  \@afterheading}
\def\@makeschapterhead#1{\noindent%
  \parbox[b]{\textwidth}{\vskip3mm}%
  {\sanhao\song\bfseries\centering%
   \interlinepenalty\@M
   #1\par\nobreak%
   \vskip1.5em%
   \nointerlineskip}}
\renewcommand\section{\par%
  \ifdim\prevdepth=-1000pt\dimen0=1ex%
  \else\dimen0=0.8em\fi%
  \@startsection {section}{1}{\z@}%
  {\dimen0}%
  {1pt}%
  {\xiaosan[1.429]\filright}}
\titleformat{\subsection}[block]%
            {\sihao}{\thesubsection}%
            {1ex}{}
\titlespacing{\subsection}{2em}{0pt}{0pt}
\renewcommand{\tableofcontents}{%
  \xdu@clearpage%
  \phantomsection%
  \@makeschapterhead{\contentsname}%
  \chaptermark{\contentsname}%
  \@starttoc{toc}}
\newlength\xdu@dot@space
\setlength\xdu@dot@space{0.25pc}
\titlecontents{chapter}[0pt]{}%
              {\contentslabel{0pt}}%
              {\hspace*{0pt}}%
              {\titlerule*[\xdu@dot@space]{\bfseries{.}}\bfseries\contentspage}
\dottedcontents{section}[3em]{}{2.1em}{\xdu@dot@space}
\dottedcontents{subsection}[5em]{}{2.7em}{\xdu@dot@space}
\def\xdu@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname xdu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\xdu@define@term{subjectcode}
\xdu@define@term{catelognumber}
\xdu@define@term{classid}
\xdu@define@term{studentid}
\xdu@define@term{secretlevel}
\xdu@define@term{ctitle}
\xdu@define@term{cschool}
\xdu@define@term{cmajor}
\xdu@define@term{cfirstdiscipline}
\xdu@define@term{efirstdiscipline}
\xdu@define@term{cseconddiscipline}
\xdu@define@term{cdegreetype}
\xdu@define@term{cauthor}
\xdu@define@term{eauthor}
\xdu@define@term{csupervisor}
\xdu@define@term{esupervisor}
\xdu@define@term{cassosupervisor}
\xdu@define@term{cdate}
\xdu@define@term{edate}
\xdu@define@term{etitle}
\def\xdu@urule#1#2{\hskip2pt\underline{\hb@xt@#1{\hss#2\hss}}\hskip3pt}
\def\xdu@put@prefix#1#2{\makebox[#1][s]{#2}}
\def\xdu@firstpage{% the first page for 2014 version
  \parbox[b]{0.9\linewidth}{
    \vskip140mm
    \begin{center}
      {\noindent\erhao\song\bfseries\xdu@ctitle}
    \end{center}
    \vskip85pt
    \sihao\bfseries
    \xdu@put@prefix{4em}{\hei 作者姓名}\xdu@urule{40mm}{\song\xdu@cauthor}
    \xdu@put@prefix{7em}{\hei 导师姓名、职称}\xdu@urule{35mm}{\song\xdu@csupervisor}\\[20bp]
    \xdu@put@prefix{4em}{\hei 一级学科}\xdu@urule{40mm}{\song\xdu@cfirstdiscipline}
    \xdu@put@prefix{4em}{\hei 二级学科}\xdu@urule{50mm}{\song\xdu@cseconddiscipline}\\[20bp]
    \xdu@put@prefix{6em}{\hei 申请学位类别}\xdu@urule{30mm}{\song\xdu@cdegreetype}
    \xdu@put@prefix{8em}{\hei 提交学位论文日期}\xdu@urule{30mm}{\song\xdu@cdate}
  }
}
\def\xdu@titlepage{%
  \ifxdu@bachelor%
    \xdu@titlepage@bachelor%
  \else%
    \xdu@titlepage@graduate%
  \fi}
\newcommand{\xdu@titlepage@bachelor}{
  \parbox[b]{0.9\linewidth}{%
    \xiaosi[1.5]\song\bf\ignorespaces\flushright%
    \xdu@put@prefix{3em}{\xdu@classid@prefix}\enskip%
    \xdu@urule{32mm}{\xdu@classid}\par%
    \xdu@put@prefix{3em}{\xdu@studentid@prefix}\enskip%
    \xdu@urule{32mm}{\xdu@studentid}}
  \begin{center}
    \ifxdu@print\vspace{132mm}\else\vspace{18mm}
    \includegraphics[width=77mm]{xdubadge}\par
    \vspace{15mm}
    \parbox[t]{\linewidth}{\chuhao\hei\centering\xdu@thesis@str}\par
    \vspace{15mm}
    \includegraphics[width=44mm]{xdlogo}\par
    \vspace{18mm}\fi
    \begin{minipage}{122mm}
      \flushleft\xiaosan[2.5]\song%
      \xdu@put@prefix{25mm}{\bf\xdu@ctitle@prefix}
      \xdu@urule{95mm}{}\par
      \xdu@put@prefix{25mm}{}\xdu@urule{95mm}{}\par
      \xdu@put@prefix{25mm}{\bf\xdu@cschool@prefix}
      \xdu@urule{95mm}{\xdu@cschool}\par
      \xdu@put@prefix{25mm}{\bf\xdu@cmajor@prefix}
      \xdu@urule{95mm}{\xdu@cmajor}\par
      \xdu@put@prefix{25mm}{\bf\xdu@cauthor@prefix}
      \xdu@urule{95mm}{\xdu@cauthor}\par
      \xdu@put@prefix{25mm}{\bf\xdu@csupervisor@prefix}
      \xdu@urule{95mm}{\xdu@csupervisor}
    \end{minipage}
    \vskip-87mm\hskip25mm
    \begin{minipage}{85mm}
      \xiaosan[2.5]\song\centering\ignorespaces\xdu@ctitle
    \end{minipage}
  \end{center}
}
\newcommand{\xdu@titlepage@graduate}{
  \parbox[b]{0.9\linewidth}{
    \wuhao\songti\bfseries\ignorespaces\flushleft
    \xdu@put@prefix{14mm}{\xdu@subjectcode@prefix}%
    \xdu@urule{25mm}{\xdu@subjectcode}%
    \hspace{50mm}%
    \xdu@put@prefix{14mm}{\xdu@studentid@prefix}%
    \xdu@urule{25mm}{\xdu@studentid}\\[3mm]
    \xdu@put@prefix{14mm}{\xdu@catelognumber@prefix}%
    \xdu@urule{25mm}{\xdu@catelognumber}%
    \hspace{50mm}%
    \xdu@put@prefix{14mm}{\xdu@secretlevel@prefix}%
    \xdu@urule{25mm}{\xdu@secretlevel}}
  \vspace{1cm}
  \begin{center}
    \parbox[t]{\linewidth}{\yihao\hei\bfseries\centering\xdu@xidian@str}\par
    \vspace{56pt}
    \parbox[t]{\linewidth}{\xiaoyi\song\bfseries\centering\xdu@thesis@str}\par
    \vspace{126pt}
    \parbox[t]{\linewidth}{\erhao\song\bfseries\centering\xdu@ctitle}\par
  \end{center}

  \vspace{120pt}
  \parbox[b]{0.9\linewidth}{
    \newlength\tmpleft
    \setlength{\tmpleft}{5cm}
    \hspace{\tmpleft}{\sihao\song\bfseries\xdu@cauthor@prefix}{\sihao\song\xdu@cauthor}\par\vspace{15pt}
    \hspace{\tmpleft}{\sihao\song\bfseries\xdu@cfirstdiscipline@prefix}{\sihao\song\xdu@cfirstdiscipline}\par\vspace{15pt}
    \hspace{\tmpleft}{\sihao\song\bfseries\xdu@cseconddiscipline@prefix}{\sihao\song\xdu@cseconddiscipline}\par\vspace{15pt}
    \hspace{\tmpleft}{\sihao\song\bfseries\xdu@cdegreetype@prefix}{\sihao\song\xdu@cdegreetype}\par\vspace{15pt}
    \hspace{\tmpleft}{\sihao\song\bfseries\xdu@csupervisor@prefix}{\sihao\song\xdu@csupervisor}\par\vspace{15pt}
    \hspace{\tmpleft}{\sihao\song\bfseries\xdu@cdate@prefix}{\sihao\song\xdu@cdate}\par\vspace{15pt}
  }
}
\newcommand{\xdu@etitlepage@graduate}{
  \parbox[b]{0.9\linewidth}{
    \begin{center}
      {\erhao\bfseries\xdu@etitle}
      \vskip2.5cm
      \sanhao
      {A thesis submitted to}\\
      {\MakeUppercase{\xdu@xidian@estr}}\\
      {in partial fulfillment of the requirements}\\
      {for the degree of Master of Philosophy}\\
      \vskip11cm
      {By}\\
      {\xdu@eauthor}\\
      {(\xdu@efirstdiscipline)}\\
      {Supervisor: \xdu@esupervisor}\\
      {\xdu@edate}
    \end{center}
  }
}
\long\@xp\def\@xp\collect@@body\@xp#\@xp1\@xp\end\@xp#\@xp2\@xp{%
  \collect@@body{#1}\end{#2}}
\long\@xp\def\@xp\push@begins\@xp#\@xp1\@xp\begin\@xp#\@xp2\@xp{%
  \push@begins{#1}\begin{#2}}
\long\@xp\def\@xp\addto@envbody\@xp#\@xp1\@xp{%
  \addto@envbody{#1}}
\newcommand{\xdu@@cauthorbio}[1]{\long\gdef\xdu@cauthorbio{#1}}
\newenvironment{cauthorbio}[1]{\long\gdef\xdu@bio@photo{#1}%
  \collect@body\xdu@@cauthorbio}{}
\newcommand{\xdu@@eauthorbio}[1]{\long\gdef\xdu@eauthorbio{#1}}
\newenvironment{eauthorbio}{\collect@body\xdu@@eauthorbio}{}
\def\xdu@bio@photowidth{1.00in}   % width of the biography photo area
\def\xdu@bio@photodepth{1.25in}   % depth (height) of the biography photo area
\def\xdu@bio@hangwidth{1.15in}    % width cleared for the biography photo area
\def\xdu@bio@hangdepth{1.25in}    % depth cleared for the biography photo area
\newdimen\@xdtmpdimenA
\newdimen\@xdtmpdimenB
\newcount\@xdtmpcountA
\def\xdu@make@authorbio{%
  \begin{center}
    \ifxdu@english%
      \sanhao[2]\bfseries{\xdu@authorbio@title}
    \else
      \sanhao[2]\hei{\xdu@authorbio@title}
    \fi
  \end{center}
  \vskip2ex%
  \def\xdu@temp@photobox{\mbox{%
      \begin{minipage}[b][\xdu@bio@photodepth][c]{\xdu@bio@photowidth}%
        \centering \xdu@bio@photo%
      \end{minipage}}}
  \settoheight{\@xdtmpdimenA}{\xdu@temp@photobox}
  \@xdtmpdimenB=\xdu@bio@hangdepth%
  % countA has the hang depth
  \@xdtmpcountA=\@xdtmpdimenB
  % calculates lines needed to produce the hang depth
  \divide\@xdtmpcountA by \baselineskip
  \advance\@xdtmpcountA by 1% ensure we overestimate
  % reference the top of the photo area to the top of a capital T
  \settoheight{\@xdtmpdimenB}{\mbox{T}}%
  \noindent\makebox[0pt][l]{\hspace{-\xdu@bio@hangwidth}%
    \raisebox{\@xdtmpdimenB}[0pt][0pt]{%
      \raisebox{-\xdu@bio@photodepth}[0pt][0pt]{\xdu@temp@photobox}}}%
  \hangindent\xdu@bio@hangwidth%
  \hangafter-\@xdtmpcountA%
  \ifxdu@english%
    \xdu@eauthorbio\par%
  \else
    \indent\xdu@cauthorbio\par%
  \fi
  \ifnum \prevgraf <\@xdtmpcountA\relax% detect when the biography text is shorter than the photo
  \advance\@xdtmpcountA by -\prevgraf% calculate how many lines we need to pad
  \advance\@xdtmpcountA by -1\relax% we compensate for the fact that we indented an extra line
  \@xdtmpdimenA=\baselineskip% calculate the length of the padding
  \multiply\@xdtmpdimenA by \@xdtmpcountA%
  \noindent\rule{0pt}{\@xdtmpdimenA}% insert an invisible support strut
  \fi%
  \ifxdu@english\relax\else\xdu@eauthorbio\par\fi%
}
\def\xdu@make@declaration{%
  \song\xiaosi[1.5]
  {\centering\bfseries\sihao%
    \xdu@xidian@str\par\xdu@declaration@title\par}
  \vskip5pt\xdu@declaration@str\vskip15mm
  \xdu@put@prefix{5em}{\xdu@author@presig}\underline{\hskip30mm}\hskip25mm
  \xdu@put@prefix{5em}{\xdu@date@presig}\underline{\hskip30mm}\par
  \vskip20mm
  \ifxdu@bachelor{}\else
  {\centering\bfseries\sihao%
    \xdu@xidian@str\par\xdu@authorization@title\par}
  \vskip5pt\xdu@authorization@str\par
  \vskip20mm
  \xdu@put@prefix{5em}{\xdu@author@presig}\underline{\hskip30mm}\hskip25mm
  \xdu@put@prefix{5em}{\xdu@supervisor@presig}\underline{\hskip30mm}\par
  \vskip10mm
  \xdu@put@prefix{5em}{\xdu@date@presig}\underline{\hskip30mm}\hskip25mm
  \xdu@put@prefix{5em}{\xdu@date@presig}\underline{\hskip30mm}\par
  \fi
}
\newcommand{\makecover}{
  \thispagestyle{xdu@empty}
  \xdu@firstpage
  \xdu@clearpage
  \begin{titlepage}
    \xdu@titlepage
  \end{titlepage}
  \xdu@clearpage
  \thispagestyle{xdu@empty}
  \xdu@etitlepage@graduate
  \xdu@clearpage
  \addtolength{\topmargin}{15pt}
  \ifxdu@doctor
    \thispagestyle{xdu@empty}%
    \xdu@make@authorbio%
    \xdu@clearpage%
  \fi%
  \thispagestyle{xdu@empty}
  \xdu@make@declaration
  \xdu@clearpage
  \addtolength{\topmargin}{-15pt}
  \setcounter{page}{1}
  \xdu@makeabstract
}
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter%
                          -\fi\@arabic\c@equation}
\let\old@tabular\@tabular
\def\xdu@tabular{\wuhao\old@tabular}
\DeclareCaptionLabelFormat{xdu@cap}{{\wuhao#1\rmfamily#2}}
\DeclareCaptionLabelSeparator{xdu@sep}{\hspace{1em}}
\DeclareCaptionFont{xdu@capfont}{\wuhao}
\captionsetup{labelformat=xdu@cap,
              labelsep=xdu@sep,
              font=xdu@capfont,
              justification=centering}
\captionsetup[table]{position=top, belowskip={12bp-\intextsep}, aboveskip=3bp}
\captionsetup[figure]{position=bottom, belowskip={12bp-\intextsep}, aboveskip=3bp}
\captionsetup[subfloat]{font=xdu@capfont,captionskip=6bp,%
                        nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewenvironment{table}{%
  \renewcommand* {\@floatboxreset}{%
    \reset@font\@setminipage}
  \dawu\@float{table}%
}{%
  \end@float\normalsize
}

\newcommand{\xdu@@cabstract}[1]{\long\gdef\xdu@cabstract{#1}}
\newenvironment{cabstract}{\collect@body\xdu@@cabstract}{}
\newcommand{\xdu@@eabstract}[1]{\long\gdef\xdu@eabstract{#1}}
\newenvironment{eabstract}{\collect@body\xdu@@eabstract}{}
\newcommand{\xdu@@ckeywords}[1]{\long\gdef\xdu@ckeywords{#1}}
\newenvironment{ckeywords}{\collect@body\xdu@@ckeywords}{}
\newcommand{\xdu@@ekeywords}[1]{\long\gdef\xdu@ekeywords{#1}}
\newenvironment{ekeywords}{\collect@body\xdu@@ekeywords}{}
\newcommand{\xdu@@cthesistype}[1]{\long\gdef\xdu@cthesistype{#1}}
\newenvironment{cthesistype}{\collect@body\xdu@@cthesistype}{}
\newcommand{\xdu@@ethesistype}[1]{\long\gdef\xdu@ethesistype{#1}}
\newenvironment{ethesistype}{\collect@body\xdu@@ethesistype}{}
\newcommand{\xdu@makeabstract}{%
  \xdu@mkabstracttrue%
  \expandafter \ifx \csname xdu@cabstract\endcsname%
  \relax\else%
    \chapter*{\cabstractname}%
    \normalsize\par\xdu@cabstract\vskip12bp%
    \setbox0=\hbox{\wuhao\song\bfseries\xdu@ckeywords@title}%
    \setbox1=\hbox{\wuhao\song\bfseries\xdu@cthesistype@title}%
    \noindent\hangindent\wd0\hangafter1
    \expandafter \ifx \csname xdu@ckeywords\endcsname%
      \relax\box0{\hei}%
    \else\box0{\song\wuhao\xdu@ckeywords}\fi%

    \noindent\hangindent\wd1\hangafter1
    \box1{\song\wuhao\xdu@cthesistype}%
  \fi%
  \expandafter \ifx \csname xdu@eabstract\endcsname \relax%
  \else%
    \chapter*{\bfseries\eabstractname}%
    {\setlength{\parindent}{0cm}\normalsize\par\xdu@eabstract\vskip12bp}%
    \setbox0=\hbox{\wuhao\bfseries Keywords:\hspace{0.5em}}%
    \setbox1=\hbox{\wuhao\bfseries Type of Dissertation:\hspace{0.5em}}%
    \noindent\hangindent\wd0\hangafter1%
    \expandafter \ifx \csname xdu@ekeywords\endcsname%
      \relax\box0{\bfseries}%
    \else\box0{\wuhao\xdu@ekeywords}\fi%

    \noindent\hangindent\wd1\hangafter1
    \box1{\wuhao\xdu@ethesistype}%
  \fi
  \xdu@mkabstractfalse%
}

\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
\unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
   \if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\onlinecite{\@onlinecite}
\def\@onlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\renewenvironment{thebibliography}[1]{%
  \chapter*{\bibname}%
  \wuhao[1.5]%
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth\labelwidth{1.1cm}
    \setlength{\labelsep}{0.6em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelwidth+\labelsep}
    \addtolength{\itemsep}{-0.7em}
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}
\ifxdu@english
\newenvironment{acknowledgments}{\chapter*{\bfseries\xdu@ackname}}{}
\else
\newenvironment{acknowledgments}{\chapter*{\xdu@ackname}}{}
\fi
\let\xdu@appendix\appendix
\renewenvironment{appendix}{
  \xdu@appendix
  \gdef\@chapapp{\appendixname~\thechapter}
}{}
\AtEndOfClass{\input{xduthesis.cfg}}%
\AtBeginDocument{\CJKindent}
\AtEndOfClass{\sloppy\xdu@item@space}
\endinput
%%
%% End of file `xduthesis.cls'.
