TEX = pdflatex --halt-on-error
CONVERT = convert +append
DENSITY = -density 300
QUALITY = -quality 90
RM = rm -f

all: necces_example.pdf uic1_example.pdf uic2_example.pdf UICpostertheme_example.pdf clean

necces_example.pdf: necces_example.tex
	${TEX} necces_example.tex
	${CONVERT} ${DENSITY} necces_example.pdf ${QUALITY} necces_example.png

necces_example.tex:

uic1_example.pdf: uic1_example.tex
	${TEX} uic1_example.tex
	${CONVERT} ${DENSITY} uic1_example.pdf ${QUALITY} uic1_example.png

uic1_example.tex:

uic2_example.pdf: uic2_example.tex
	${TEX} uic2_example.tex
	${CONVERT} ${DENSITY} uic2_example.pdf ${QUALITY} uic2_example.png

uic2_example.tex:

UICpostertheme_example.pdf: UICpostertheme_example.tex
	${TEX} UICpostertheme_example.tex
	${TEX} UICpostertheme_example.tex
	${CONVERT} -density 60 UICpostertheme_example.pdf ${QUALITY} UICpostertheme_example.png
UICpostertheme_example.tex:

clean:
	${RM} *.out
	${RM} *.log
	${RM} *.nav
	${RM} *.aux
	${RM} *.snm
	${RM} *.toc
