\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CabanaULON}[2018/01/07 Unattended Laboratory Operation Notice]

\LoadClass[letterpaper,twoside,11pt]{article}
\RequirePackage[left=1.5cm, right=1.5cm, top=1.5cm, bottom=1cm]{geometry}
\RequirePackage{balance}
\RequirePackage{sectsty}
\RequirePackage{graphicx} 
\RequirePackage{float}
\RequirePackage{fancyhdr}
\RequirePackage{charter} %font
\RequirePackage[T1]{fontenc}
\RequirePackage[compact]{titlesec}
\RequirePackage{epstopdf}
\RequirePackage{amsmath}
\RequirePackage{gensymb}
\RequirePackage{amssymb}
\RequirePackage{tabularx}
\RequirePackage{tikz}
\RequirePackage{soul}
\RequirePackage{siunitx}        %For using units
\RequirePackage{xcolor}
	\definecolor{fadegray}{gray}{0.75}

% Date Time packages
\RequirePackage[mmddyyyy]{datetime}
\RequirePackage{scrtime}
\RequirePackage{advdate}

\newcommand{\tomorrow}{\AdvanceDate[1]\today}

\usepackage{amssymb,tikz,pdftexcmds,xparse}

\usetikzlibrary{backgrounds}
\tikzset{
  every overlay node/.style={
    anchor=north west,
  },
}
% Usage:
% \tikzoverlay at (-1cm,-5cm) {content};
% or
% \tikzoverlay[text width=5cm] at (-1cm,-5cm) {content};
\def\tikzoverlay{%
   \tikz[baseline,overlay]\node[every overlay node]
}%

\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}}

\title{\vspace{-6ex}\textbf{Unattended Laboratory Operation Notice}\vspace{0ex}}
\numberwithin{equation}{section}
\titlespacing{\section}
{0pt}{2ex}{2ex}
\titlespacing{\subsection}
{0pt}{2ex}{2ex}
\date{}

% Renew new commands
\settimeformat{xxivtime}

\newcommand*{\@CHO}{Michael R. Plews}
\newcommand*{\CHO}[1]{\renewcommand*{\@CHO}{#1}}

\newcommand*{\@Start}{\hfill}
\newcommand*{\Start}[1]{\renewcommand*{\@Start}{#1}}

\newcommand*{\@StartTime}{\hfill}
\newcommand*{\StartTime}[1]{\renewcommand*{\@StartTime}{#1}}

\newcommand*{\@End}{\hfill}
\newcommand*{\End}[1]{\renewcommand*{\@End}{#1}}

\newcommand*{\@EndTime}{\hfill}
\newcommand*{\EndTime}[1]{\renewcommand*{\@EndTime}{#1}}

\newcommand*{\@Name}{\hfill}
\newcommand*{\Name}[1]{\renewcommand*{\@Name}{#1}}

\newcommand*{\@ContactNumber}{\hfill}
\newcommand*{\ContactNumber}[1]{\renewcommand*{\@ContactNumber}{#1}}

\newcommand*{\@PI}{\hfill}
\newcommand*{\PI}[1]{\renewcommand*{\@PI}{#1}}

\newcommand*{\@PINumber}{\hfill}
\newcommand*{\PINumber}[1]{\renewcommand*{\@PINumber}{#1}}

% Experimental Arguments
\newcommand*{\@Description}{\hfill}
\newcommand*{\Description}[1]{\renewcommand*{\@Description}{#1}}

\newcommand*{\@Room}{\hfill}
\newcommand*{\Room}[1]{\renewcommand*{\@Room}{#1}}

\newcommand*{\@Location}{\hfill}
\newcommand*{\Location}[1]{\renewcommand*{\@Location}{#1}}

\newcommand*{\@Chemicals}{\hfill}
\newcommand*{\Chemicals}[1]{\renewcommand*{\@Chemicals}{#1}}

\newcommand*{\@EmergencyShutdown}{\hfill}
\newcommand*{\EmergencyShutdown}[1]{\renewcommand*{\@EmergencyShutdown}{#1}}

\newcommand*{\@AdditionalHazards}{\hfill}
\newcommand*{\AdditionalHazards}[1]{\renewcommand*{\@AdditionalHazards}{#1}}


% Hazards
\newcommand*{\unchecked}{
  \begin{tikzpicture}
    \node at (0,0) [rectangle,draw] () {};
  \end{tikzpicture}
}
\newcommand*{\checked}{
  \begin{tikzpicture}
    \node at (0,0) [rectangle,draw, fill] () {};
  \end{tikzpicture}
}

\newcommand*{\@Biohazard}{\unchecked Biohazard}
\newcommand*{\Biohazard}[1]{\renewcommand*{\@Biohazard}{#1 Biohazard}}

\newcommand*{\@FlammableGas}{\unchecked Flammable Gas}
\newcommand*{\FlammableGas}[1]{\renewcommand*{\@FlammableGas}{#1 Flammable Gas}}

\newcommand*{\@Mutagen}{\unchecked Mutagen}
\newcommand*{\Mutagen}[1]{\renewcommand*{\@Mutagen}{#1 Mutagen}}

\newcommand*{\@ShockSensitive}{\unchecked Shock Sensitive}
\newcommand*{\ShockSensitive}[1]{\renewcommand*{\@ShockSensitive}{#1 Shock Sensitive}}

\newcommand*{\@Carcinogen}{\unchecked Carcinogen}
\newcommand*{\Carcinogen}[1]{\renewcommand*{\@Carcinogen}{#1 Carcinogen}}

\newcommand*{\@FlammableLiquid}{\unchecked Flammable Liquid}
\newcommand*{\FlammableLiquid}[1]{\renewcommand*{\@FlammableLiquid}{#1 Flammable Liquid}}

\newcommand*{\@Noise}{\unchecked Noise}
\newcommand*{\Noise}[1]{\renewcommand*{\@Noise}{#1 Noise}}

\newcommand*{\@Teratogen}{\unchecked Teratogen}
\newcommand*{\Teratogen}[1]{\renewcommand*{\@Teratogen}{#1 Teratogen}}

\newcommand*{\@CompressedGas}{\unchecked Compressed Gas}
\newcommand*{\CompressedGas}[1]{\renewcommand*{\@CompressedGas}{#1 Compressed Gas}}

\newcommand*{\@FlammableSolid}{\unchecked Flammable Solid}
\newcommand*{\FlammableSolid}[1]{\renewcommand*{\@FlammableSolid}{#1 Flammable Solid}}

\newcommand*{\@OrganicPeroxide}{\unchecked Organic Peroxide}
\newcommand*{\OrganicPeroxide}[1]{\renewcommand*{\@OrganicPeroxide}{#1 Organic Peroxide}}

\newcommand*{\@Toxic}{\unchecked Toxic}
\newcommand*{\Toxic}[1]{\renewcommand*{\@Toxic}{#1 Toxic}}

\newcommand*{\@Corrosive}{\unchecked Corrosive}
\newcommand*{\Corrosive}[1]{\renewcommand*{\@Corrosive}{#1 Corrosive}}

\newcommand*{\@HighlyToxic}{\unchecked Highly Toxic}
\newcommand*{\HighlyToxic}[1]{\renewcommand*{\@HighlyToxic}{#1 Highly Toxic}}

\newcommand*{\@Oxidizer}{\unchecked Oxidizer}
\newcommand*{\Oxidizer}[1]{\renewcommand*{\@Oxidizer}{#1 Oxidizer}}

\newcommand*{\@Unstable}{\unchecked Unstable}
\newcommand*{\Unstable}[1]{\renewcommand*{\@Unstable}{#1 Unstable}}

\newcommand*{\@Cryogen}{\unchecked Cryogen}
\newcommand*{\Cryogen}[1]{\renewcommand*{\@Cryogen}{#1 Cryogen}}

\newcommand*{\@HotOilBath}{\unchecked Hot Oil Bath}
\newcommand*{\HotOilBath}[1]{\renewcommand*{\@HotOilBath}{#1 Hot Oil Bath}}

\newcommand*{\@Pyrophoric}{\unchecked Pyrophoric}
\newcommand*{\Pyrophoric}[1]{\renewcommand*{\@Pyrophoric}{#1 Pyrophoric}}

\newcommand*{\@UVLight}{\unchecked UV Light}
\newcommand*{\UVLight}[1]{\renewcommand*{\@UVLight}{#1 UV Light}}

\newcommand*{\@Electrical}{\unchecked Electrical}
\newcommand*{\Electrical}[1]{\renewcommand*{\@Electrical}{#1 Electrical}}

\newcommand*{\@HotPlate}{\unchecked Hot Plate/Stirrer}
\newcommand*{\HotPlate}[1]{\renewcommand*{\@HotPlate}{#1 Hot Plate/Stirrer}}

\newcommand*{\@UnderPressure}{\unchecked Under Pressure}
\newcommand*{\UnderPressure}[1]{\renewcommand*{\@UnderPressure}{#1 Under Pressure}}

\newcommand*{\@WaterReactive}{\unchecked Water Reactive}
\newcommand*{\WaterReactive}[1]{\renewcommand*{\@WaterReactive}{#1 Water Reactive}}

\newcommand*{\@Explosive}{\unchecked Explosive}
\newcommand*{\Explosive}[1]{\renewcommand*{\@Explosive}{#1 Explosive}}

\newcommand*{\@Irritant}{\unchecked Irritant}
\newcommand*{\Irritant}[1]{\renewcommand*{\@Irritant}{#1 Irritant}}

\newcommand*{\@Heating}{\unchecked Heating}
\newcommand*{\Heating}[1]{\renewcommand*{\@Heating}{#1 Heating}}

\newcommand*{\@Flammable}{\unchecked Flammable}
\newcommand*{\Flammable}[1]{\renewcommand*{\@Flammable}{#1 Flammable}}

\newcommand*{\@Laser}{\unchecked Laser}
\newcommand*{\Laser}[1]{\renewcommand*{\@Laser}{#1 Laser}}

\newcommand*{\@RunningWater}{\unchecked Running Water}
\newcommand*{\RunningWater}[1]{\renewcommand*{\@RunningWater}{#1 Running Water}}

\newcommand*{\@Aerosol}{\unchecked Aerosol}
\newcommand*{\Aerosol}[1]{\renewcommand*{\@Aerosol}{#1 Aerosol}}

\newcommand*{\@MagneticField}{\unchecked Magnetic Field}
\newcommand*{\MagneticField}[1]{\renewcommand*{\@MagneticField}{#1 Magnetic Field}}

\newcommand*{\@XRay}{\unchecked X-Ray}
\newcommand*{\XRay}[1]{\renewcommand*{\@XRay}{#1 X-Ray}}

\newcommand*{\@MovingParts}{\unchecked Moving Parts}
\newcommand*{\MovingParts}[1]{\renewcommand*{\@MovingParts}{#1 Moving Parts}}

\newcommand{\makeulon}{%
  \pagestyle{fancy}
\pagenumbering{gobble}
\maketitle
\begin{tikzpicture}
  \tikzoverlay at (-10.5cm,4cm) {\includegraphics[scale=0.3]{logos/uic_red.pdf}};
\end{tikzpicture}
\centering

\vspace{-6ex}
\begin{tabularx}{\linewidth}{| l | X | X |}
\hline
  \textbf{Date: }\today & \textbf{Room: }\@Room & \textbf{Location: } \@Location\\\hline
  \textbf{Name: }\@Name & \multicolumn{2}{X|}{\textbf{Contact \#:} \@ContactNumber}\\\hline
  \textbf{Principal Investigtor (PI):} \@PI & \multicolumn{2}{X|}{\textbf{Contact \#:} \@PINumber}\\\hline
  \textbf{Start Date/Time:} \@Start \space \@StartTime& \multicolumn{2}{X|}{\textbf{End Date/Time:} \@End \space \@EndTime }\\\hline
\end{tabularx}
\hfill \break
\hfill \break
\begin{tabularx}{\linewidth}{| X |}
\hline
  \textbf{Description of Experiment/Task:}\\\hline
  \@Description \\\tabularnewline\hline
\end{tabularx}
\hfill \break
\hfill \break
\begin{tabularx}{\linewidth}{|X|X|X|X|}
\hline
\multicolumn{4}{|l|}{\textbf{Chemicals in Use (use full name):}}\\\hline
\multicolumn{4}{|p{17.5cm}|}{\@Chemicals}\\\hline
\@Biohazard & \@FlammableGas & \@Mutagen &	\@ShockSensitive \\
  \@Carcinogen		&	\@FlammableLiquid	&	\@Noise					&	\@Teratogen			\\
  \@CompressedGas	&	\@FlammableSolid		&	\@OrganicPeroxide		&	\@Toxic				\\
  \@Corrosive		&	\@HighlyToxic		&	\@Oxidizer				&	\@Unstable			\\
  \@Cryogen			&	\@HotOilBath			&	\@Pyrophoric				&	\@UVLight			\\
  \@Electrical		&	\@HotPlate			&	\@UnderPressure	&	\@WaterReactive		\\
  \@Explosive		&	\@Irritant			&	\@Heating				&	\@MovingParts		\\
  \@Flammable		&	\@Laser				&	\@RunningWater			&	\\
  \@Aerosol			&	\@MagneticField		&	\@XRay					&	\\
  \hline
\multicolumn{4}{|l|}{\textbf{Additional Hazards:}}\\\hline
\multicolumn{4}{|l|}{\AdditionalHazards}\\\hline
\end{tabularx}
\hfill \break
\hfill \break
\begin{tabularx}{\linewidth}{| X |}
\hline
  \textbf{Procedure to Shut Down Operation in Case of Emergency:}\\\hline
  \@EmergencyShutdown\\
In case of an \textbf{emergency}, notify campus police (\textbf{5-5555}), Physical plant (\textbf{6-7511}), and EHSO (\textbf{6-7233}).\\\hline
\end{tabularx}
\hfill \break
\hfill \break
\begin{tabularx}{\linewidth}{| X | X | X |}
\hline
  \multicolumn{3}{|c|}{\textbf{Approval of PI or Group CHO}}\\\hline
  \@CHO\textbf{ }(CHO)&&\today\\\hline
  \multicolumn{3}{|c|}{\textbf{Review of Experimental Setup}}\\\hline
  &&\today\\\hline
  (Print)	&	(Signature) & (Date)\\\hline
\end{tabularx}
\hfill\break
\hfill\break
This ULON expires on:\\
\AdvanceDate[14]\today\\
}%
\endinput
