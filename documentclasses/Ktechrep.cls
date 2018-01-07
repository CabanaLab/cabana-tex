\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Ktechrep}[2012/01/25 Kalsec Technical Report Class]
\DeclareOption{external}{
  % modifications for external reports
  \def \myexternal {}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[letterpaper, 11pt]{article}
\RequirePackage{fancyhdr}
\RequirePackage[cm]{fullpage}
\RequirePackage{bigstrut} % Used for proper spacing in 'internal use only' box
\RequirePackage{graphicx}
\RequirePackage{kalsec}

\ifx \myexternal \undefined
\else
  % ``Confidential'' stamp
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[C]{
    \thepage \\
    \Large{\textbf{Confidential}}
  }
\fi

% Default \title value
\def\@title{{\kalsec} Technical Report}
% Default \author value
\def\@author{Wolf, M.}
% Change \to{} command to be used in the Kalsec header
\def\@to{{\kalsec} Library} % Default value
\renewcommand{\to}[1]{\def\@to{#1}}
% Change \to{} command to be used in the Kalsec header
\def\@cc{} % Default value
\newcommand{\cc}[1]{\def\@cc{#1}}
% Create \project command to be used in the Kalsec header
\def\@project{} % Default value
\providecommand{\project}[1]{\def\@project{#1}}

% Re-define the \maketitle command
\renewcommand{\maketitle}{%
  %---------------------------------------------------------
  % Header specific to Kalsec technical reports

  % First switch to sans serif font family
  \sffamily
  \includegraphics{/home/mwolf/Pictures/logos/logo-whitebg.eps} \\
  % Draw the ``internal use only'' box
  \ifx \myexternal \undefined
  \begin{center}
    \begin{tabular}{| c |}
      \hline
      \large
      \textbf{INTERNAL USE ONLY} \bigstrut \\
      \normalsize
      \textbf{Destroy Upon Disposal} \\
      \hline
    \end{tabular}
  \end{center}
  \fi
  \begin{center}
    \LARGE
        {\kalsec} Technical Report \\
        \ifx \myexternal \undefined
        \vspace{0.2cm}
        \tiny
        (Distribution outside the Company in whole or part requires written permission from the Technical Director)
        \fi
  \end{center}

  % Project information (title, authors, etc)
  \hrule
  \begin{tabular}{r l}
    \\
    \textbf{Title:} &
    \@title \\
    \textbf{To:} &
    \@to \\
    % Create the Cc: field if provided by the author
    \ifx \@cc \@empty
    \else
      \textbf{Cc:} &
      \@cc \\
    \fi
    \textbf{Author(s):} &
    \@author \\
    \textbf{Date:} &
    \@date \\ % Add Date Here
    % Create the Project Folders: field if provided by the author
    \ifx \@project \@empty
    \else
      \textbf{Project Folders:} &
      \@project \\
    \fi
    \\
  \end{tabular}
  \hrule
  \vspace{0.2cm}
  % Switch back to roman font family
  \rmfamily
  % End Kalsec Technical Report Header
  %---------------------------------------------------------
}%
