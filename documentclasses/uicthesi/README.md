# uicthesi

Taken and adjusted from the math department. Official instructions
are
[here](https://www.math.uic.edu/graduate/current/uicthesi/uictman.pdf).

## Installation

Clone this repository inside `~/texmf/tex/` and `ln -s` or copy all
`.bst` files to `~/texmf/bibtex/bst/uicthesi`

## Recommended Additional Packages

```tex
\usepackage[version=4]{mhchem}  %For formulae

\usepackage[alsoload=synchem,group-separator={,}]{siunitx}  %SI units
	\sisetup{detect-all}				%Sets SI font to currently loaded font

\usepackage{notoccite}          %Dont number citations as they appear in the list of figures

\usepackage{pdfpages}           %including whole pdfs in document (useful for including permissions at the end)

\usepackage{nth}                %nthing numbers

% Allows use of standalone tex graphics
\usepackage[mode=buildnew]{standalone}

% Proper tild-ing
\renewcommand\textasciitilde{\raise.17ex\hbox{$\scriptstyle\sim$}}

%For acronyms
\usepackage{mfirstuc}
\usepackage[acronym,makeindex]{glossaries}

% Don't seperate entries alphabetically
\newglossarystyle{onecol}{%
\renewcommand*{\glossaryentryfield}[5]{%
\item[\glstarget{##1}{##2}] ##3%
  }
\renewcommand*{\glossarysection}[2][]{}
\renewcommand*{\glsgroupskip}{}
}
```
