## By executing this file you will create the latex document.
## You can execute this file by typing ``R CMD BATCH sterter.R''. Alternatively you can copy/paste the three lines of code on the command line.
## Personally I prefer the first method, because you will probably need to create the same file over and over again.

## The command knit will create the file document.tex, This is your latex file and 
my.knit <- knitr::knit("document.Rnw")

## document.tex is the latex file that will be compiled by the two following command.
system(paste0("pdflatex ", "document.tex"))
system(paste0("pdflatex ", "document.tex"))
## To create a complete pdf file the tex document has to be compiled at least two times.


