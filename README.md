# fromRtoLatex
Here is present a short but complete file to create a Latex document from a R file.

Please install Tex and R (it requires package 'xtable')

By executing the file 'starter.R' you will create the latex document.
I raccomand to use the command ``R CMD BATCH sterter.R''.

Alternatively you can copy/paste the three lines of code on the command line.

The command knit will create the file document.tex.

> my.knit <- knitr::knit("document.Rnw")

document.tex is the latex file that will be compiled by the two following command.

> system(paste0("pdflatex ", "document.tex"))
> system(paste0("pdflatex ", "document.tex"))

To create a complete pdf file the tex document has to be compiled at least two times.

Within the .Rnw and the generated .pdf file there are many info on how to run and modify a .Rnw file.

Mattia Cinelli
December 12018 HE
