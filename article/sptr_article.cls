\NeedsTeXFormat{LaTeX2e}

%%% Preamble
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[11pt,a4paper]{article}
\usepackage{amsmath, amsthm, amssymb, amsfonts} % Useful math symbols and theorem environments
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage{amscd}
\RequirePackage{epsfig}
%\RequirePackage{graphics}
\RequirePackage{ifthen}
\RequirePackage{varioref}
\RequirePackage{color}
\RequirePackage{mathrsfs} % mathscr
%\RequirePackage{tikz} % Drawing Diagrams
%\usepackage{kotex}
%\usepackage{siunitx}
\RequirePackage[]{kotex}
%\usepackage{dhucs-untype1}
\RequirePackage{graphicx}

\usepackage[a4paper, total={5.5in, 9in}]{geometry}
\newcommand{\ShortArticleName}[1]{\newcommand{\shortname}{#1}}
\newcommand{\FullArticleName}[1]{\title{\textbf{#1} \\ \vspace{0.5em} \large Journal of Spanning Tree Vol.\volno \:---\:\issueno}}
\newcommand{\VolNo}[1]{\newcommand{\volno}{#1}}
\newcommand{\IssueNo}[1]{\newcommand{\issueno}{#1}}
\usepackage[]{fancyhdr}
\fancyhead{} % clear all header fields
\fancyhead[R]{\small \textsc{Vol. \volno\:---\:\issueno}}
\fancyhead[L]{\textbf{\shortname}}

\fancyfoot[C]{\thepage}

\pagestyle{fancy}

% Font Related
% \usepackage{mlmodern} % Modern CMU
% \usepackage[T1]{fontenc}

\usepackage[english]{babel}
\usepackage{csquotes}
\usepackage{fontspec}
%\usepackage{xeCJK}
\usepackage{kotex}
\setmainhangulfont{NanumMyeongjo}


\usepackage{biblatex}

\usepackage{titlesec} % Custom Section

%%% HEADER


%%% Theorem and Environments

\theoremstyle{definition}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{question}{Question}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{exercise}[theorem]{Exercise}

%%% My Symbols
\renewcommand{\qed}{\hfill////}
\newcommand*{\dd}{\mathop{\mathrm{d}\!}}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\Gal}{Gal}
\DeclareMathOperator{\Hom}{Hom}

%\setlength{\textwidth}{160.0mm}
%\setlength{\textheight}{240.0mm}
%\setlength{\oddsidemargin}{5mm}
%\setlength{\evensidemargin}{5mm}
%\setlength{\leftmargin}{50mm}
%\setlength{\topmargin}{-18mm}
%\setlength{\parindent}{5.0mm}
\setlength{\headheight}{14pt}
\addtolength{\topmargin}{-2pt}

% Section Bar
%\titleformat{\section}
  %{\normalfont\Large\bfseries}{\thesection}{1em}{}[{\vspace{0.3em}\titlerule[0.8pt]}]


%%% Color settings


\newcommand{\korean}{
  \addto\captionsenglish{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {목차}%
  }
}