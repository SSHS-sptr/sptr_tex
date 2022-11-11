\LoadClass[serif, pdftex]{beamer}

% Packages
\usepackage{tikz}
\usepackage{framed}
\usepackage{amssymb, amsmath, amsthm, graphicx}
\usepackage{braket}
\usepackage{physics}
%\usepackage{kotex}
\usepackage{xcolor}

\newcommand\HUGE{\@setfontsize\Huge{38}{47}}
\usefonttheme{structuresmallcapsserif}

\theoremstyle{definition}

% Colors
\definecolor{pureblack}{HTML}{000000}
\definecolor{black}{HTML}{191724}
\definecolor{darkgray}{HTML}{26233a}
\definecolor{gray}{HTML}{908caa}
\definecolor{red}{HTML}{eb6f92}
\definecolor{green}{HTML}{9ccfd8}
\definecolor{cyan}{HTML}{31748f}
\definecolor{yellow}{HTML}{f6c177}
\definecolor{white}{HTML}{FFFFFF}

\setbeamercolor{background canvas}{bg=black}

\setbeamercolor{title}{fg=white}
\setbeamerfont{title}{size=\Large}
\setbeamercolor{author}{fg=white}
\setbeamerfont{author}{size=\normalsize}

\setbeamercolor{item}{fg=red}
\setbeamercolor{itemize/enumerate body}{fg=white}

\setbeamercolor{normal text}{fg=white}
\setbeamercolor{section in toc}{fg=white}
\setbeamercolor{subsection in toc}{fg=white}
\setbeamercolor{section in toc shaded}{fg=pureblack}
\setbeamercolor{subsection in toc shaded}{fg=pureblack}
\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}[subsections numbered]

% Highlighting

\let\oldtextbf\textbf
\renewcommand{\textbf}[1]{\textcolor{yellow}{\oldtextbf{#1}}}

\newcommand\titlesymbol[1]{
	\setlength{\fboxsep}{1em}
	\setbeamertemplate{title page}{
		\begin{center}
			\fcolorbox{white}{black}{\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle}
		\end{center}

		%\vskip 2em
		\begin{center}
			\usebeamerfont{author} \usebeamercolor[fg]{author}\insertauthor \usebeamerfont{institute} \hskip 2em \usebeamercolor[fg]{institute}\insertinstitute
		\end{center}

		\vskip 4em
		\begin{center}
			\color{gray}{\Huge $#1$}
		\end{center}
	}
}


\setbeamertemplate{frametitle}
{
	\vskip 4mm
	\color{white}\Large{\insertframetitle}
	\vskip 2mm
	\hrule height 1pt \hfill
}

\AtBeginSection[]{
	\frame{\tableofcontents[currentsection]}
}

% Environments
\setbeamertemplate{blocks}[rounded][shadow=false]

\AtBeginEnvironment{theorem}{
	\setbeamercolor{block title}{fg=white, bg=red!30!black}
	\setbeamercolor{block body}{bg=red!5!black}
}

\AtBeginEnvironment{definition}{
	\setbeamercolor{block title}{fg=white, bg=yellow!30!black}
	\setbeamercolor{block body}{bg=yellow!5!black}
}

\renewcommand{\qed}{\hfill$////$}
\AtBeginEnvironment{proof}{
	\setbeamercolor{block title}{fg=white, bg=cyan!30!black}
	\setbeamercolor{block body}{bg=cyan!5!black}
}

\makeatletter
\newenvironment<>{pfnotend}[1][\proofname]{%
    \par
    \def\insertproofname{#1\@addpunct{.}}%
    \usebeamertemplate{proof begin}#2}
  {\usebeamertemplate{proof end}}
\makeatother

\AtBeginEnvironment{pfnotend}{
	\setbeamercolor{block title}{fg=white, bg=cyan!30!black}
	\setbeamercolor{block body}{bg=cyan!10!black}
}


