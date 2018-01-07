\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Kdemo}[2012/01/25 Kalsec Demo instructions]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[letterpaper, 11pt]{article}
\RequirePackage[cm]{fullpage}
\RequirePackage[colorlinks=true,urlcolor=blue]{hyperref} % For logo link to www.kalsec.com
\RequirePackage{graphicx}
\RequirePackage{kalsec}

% Default \author value
\def\@author{Mark Wolf}

% Default \title value
\def\@title{{\kalsec} Demo}

% Re-define the \maketitle command
\renewcommand{\maketitle}{%
  % Draw the company logo and heading
  \sffamily
  \begin{minipage}{6.4cm} % Minipage is the width of the graphic that is to go here
    \href{http://www.kalsec.com}{\includegraphics{/home/mwolf/Pictures/logos/logo-whitebg.eps}}
  \end{minipage} % Minipage for the ``internal use only'' box
  \begin{minipage}[t]{12cm} 
    \centering
    \fbox{%
      \parbox{3cm}{%
        \centering
        Internal use only \\ Do not distribute
      }%
    }%
  \end{minipage}
  \rmfamily
  \section*{\@title}
}%

% Change pagestyle to add author, timestamp.
\renewcommand{\ps@plain}{%
  \def \@oddfoot{%
    \hfill {\@author} -- {\@date}
  }%
}%

% And now use the new pagestyle
\pagestyle{plain}
