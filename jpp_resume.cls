% Intro Options
\ProvidesClass{jpp_resume}[2016/08/05 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, top=0.5cm, bottom=0cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Helvetica Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
    \centering{
        \sffamily
        \fontspec{Helvetica Neue UltraLight}\fontsize{32pt}{10cm}\selectfont #1 
        \fontspec{Helvetica Neue Light}\selectfont #2
    } \\
    \vspace{5pt}
    \centering{ \color{headings}\fontspec{Heiti TC Medium}\fontsize{11pt}{14pt}\selectfont #3}
    \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
    \vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{Helvetica Light}\fontsize{16pt}{22pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subheadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Helvetica Neue Light}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titleformat{\subsubsection}{\color{subheadings}
\fontspec{Helvetica Neue Light}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec{Helvetica Neue}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont\vspace{1pt}}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec{Helvetica Neue}\fontsize{10pt}{10pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\scshape\fontspec{Helvetica Neue Light}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
