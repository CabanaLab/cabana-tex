\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Ksummary}[2012/01/25 Kalsec Letterhead]

%\setlength{\textwidth}{200pt}
\newcommand{\teststring}{Hello, world!}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[letterpaper, 12pt]{article}
\RequirePackage[cm]{fullpage}
\RequirePackage{graphicx}
\RequirePackage[colorlinks=true,urlcolor=blue]{hyperref} % For www.kalsec.com link in margin
\RequirePackage[normalem]{ulem} % For underlining the link
\RequirePackage{kalsec}

\setlength{\textwidth}{460pt}
\setlength{\marginparwidth}{90pt} % Set the margin width to hold our text

% New pagestyle for the first page (adds ISO footer)
\newcommand{\ps@first}{%
  % Set the ISO registration footer
  % \rfoot{ISO Cert}
  \def \@oddfoot{%
    \scriptsize
    \hfill
    \begin{tabular}{r}
      \sffamily
      \textbf{ISO 9001-2000 Registered} \\
      ANAB Cert. No. 10156 \\ 
      BS EN ISO Cert. No. 8234 \\
    \end{tabular}
  }%
}%

% Default to plain footers
\pagestyle{plain}

% Default \author value
\def\@author{Wolf, M.}
\providecommand{\from}[1]{\def\@author{#1}}
% Change \to{} command to be used in the Kalsec header
\def\@to{{\kalsec} Library} % Default value
\renewcommand{\to}[1]{\def\@to{#1}}
% Create \cc{} command to be used in the Kalsec header
\def\@cc{} % Default value
\newcommand{\cc}[1]{\def\@cc{#1}}
% Create \subject{} command to be used in the Kalsec header
\def\@subject{Memorandum} % Default value
\providecommand{\subject}[1]{\def\@subject{#1}}

% Re-define the \maketitle command
\newcommand{\makeletterhead}{%
  % This section puts the contact info in the right margin
  \marginpar{%
    \tiny
    \sffamily
    P.O. Box 50511 \\
    Kalamazoo, MI 49005-0511 \\

    3713 West Main Street \\
    Kalamazoo, MI 49005 \\
    
    269.349.9711 \\
    800.323.9320 \\

    \href{http://www.kalsec.com}{\uline{www.kalsec.com}} \\

    \uppercase{fax numbers} \\
    \emph{Sales and Marketing} \\
    269.382.3060 \\
    
    \emph{Hops Sales} \\
    269.349.9055 \\

    \emph{Lab} \\
    269.349.1178 \\

    \emph{Customer Service} \\
    269.349.1195 \\
    
    \emph{Technical Request} \\
    269.216.4048 \\

    \emph{Purchasing} \\
    269.349.1558 \\
    
    \emph{Accounting} \\
    269.349.1558 \\
  }%

  % Draw the memo logo and heading
  \includegraphics{/home/mwolf/Pictures/logos/logo-whitebg.eps} \\
}
\renewcommand{\maketitle}{
  % Project information (title, authors, etc)
  \sffamily
  \huge
  \parbox{14cm}{
    \vspace{1cm}
    \textbf{\@title}
    
  }
  % spacing and font cleanup
  \rmfamily
  % Include date
  
  \normalsize
  \vspace{0.4cm}
  \@date
  % Set page style so as to include ISO footer
  \thispagestyle{first}
}%

