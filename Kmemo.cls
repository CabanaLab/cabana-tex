\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Kmemo}[2012/01/25 Kalsec Memorandum]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{Ksummary}}
\ProcessOptions\relax

\LoadClass[letterpaper, 12pt]{Ksummary}


% Re-define the \maketitle command
\renewcommand{\maketitle}{%

  % Project information (title, authors, etc)
  \sffamily
  \begin{tabular}{r p{4in}}
    \\
    % To: field
    \textbf{To:} &
    \@to \\
    & \\
    % Create the Cc: field if provided by the author
    \ifx \@cc \@empty
    \else
    \textbf{Cc:} &
    \@cc \\
    & \\
    \fi
    % From: field
    \textbf{From:} &
    \@author \\
    & \\
    % Subject: field
    \textbf{Subject:} &
    \@subject \\
    & \\
    % Date: field
    \textbf{Date:} &
    \@date \\ % Add Date
    & \\
  \end{tabular}
  % spacing and font cleanup
  \rmfamily
  \vspace{0.2cm}
  \hrule
  \vspace{0.8cm}
  % Set page style so as to include ISO footer
  \thispagestyle{first}
}%
