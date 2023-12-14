\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[]{report}

% Typesettings
\RequirePackage[a4paper,top=2.5cm,bottom=2.5cm,left=3.25cm,right=3.25cm]{geometry}
\RequirePackage{parskip}

% Math & Symbols
\RequirePackage{mathtools}
\RequirePackage{physics}
\RequirePackage{textcomp}
\RequirePackage{gensymb}
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}

\RequirePackage{siunitx}
\AtBeginDocument{\RenewCommandCopy\qty\SI}

% STIX 2 Font
\RequirePackage{fontspec}
\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}  % Surpress warnings with package 'mathtools'

\setmainfont{STIX2Text}[
  Extension={.otf},
  Path=./STIX2Fonts/,
  UprightFont={*-Regular},
  BoldFont={*-Bold},
  ItalicFont={*-Italic},
  BoldItalicFont={*-BoldItalic}]

\setmathfont
[    Extension = .otf,
  BoldFont = XITSMath-Bold,
]
{XITSMath-Regular}

\RequirePackage{admonition}