\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{org-article}[2012/01/25 Article class to be used by org-mode]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[letterpaper, 10pt]{article}
\RequirePackage[cm]{fullpage}
