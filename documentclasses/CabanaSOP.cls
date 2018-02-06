\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CabanaSOP}[2017/05/02 Standard Operating Procedure]

%% Parent class and required package dependencies
\LoadClass[letterpaper,twocolumn,9pt]{article}
\RequirePackage{fancyhdr}
\RequirePackage[left=1cm, right=1cm, top=2cm, bottom=2cm]{geometry}

%% Class option handling
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% Command for including the authors e-mail address
%% Default's to Jordi's e-mail address
\newcommand{\@email}{}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
%% Command for including a revision date in the title/footer
\newcommand{\revised}[1]{\newcommand{\@revised}{#1}}

% Define head styling
\fancyhf{}
\pagestyle{fancy}
\lhead{\@title}
\rhead{Cabana Facilities, Univ. of Ill. Chicago}
\lfoot{{\@author} (\@email)}
\cfoot{\ifdefined\@revised\@revised\else\@date\fi}
\rfoot{Page \thepage} %% \ of \pageref{LastPage}}
\renewcommand{\footrulewidth}{2pt}

%% A simple maketitle command that preserves the header
\renewcommand{\maketitle}{
  \begin{raggedright}
    \noindent
    \Large\textsc{\@title} \par
  \end{raggedright}
  \vspace{1em}
  \normalsize
  \noindent
  Written: \@date
  \ifdefined\@revised \\
  Revised: \@revised
  \fi
  \vspace{1em}
}
