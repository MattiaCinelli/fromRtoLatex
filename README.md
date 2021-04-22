# fromRtoLatex
For a more details read my article [here](https://towardsdatascience.com/how-to-combine-latex-and-r-for-report-generation-82f23787fc43)

![Banner](https://github.com/MattiaCinelli/fromRtoLatex/blob/commons/banner.png?raw=true)

Two are the steps needed to create a R/tex report, a `starter` R script to create the final pdf, and a `.Rnw` file where all our code will be stored. 

## The starter script
The  `starter`  script has to do two basic functions:
- Load and pass the Rnw file to the knit command of the `knitr` package. This process is called weaving. This will execute the R code and produce a series of files among which there’s a .tex file that we would normally use in `texstudio`.
- Execute twice the .tex file in order to create the final PDF report

```r
my.knit = knitr::knit("document.Rnw")
## document.tex is the latex file that will be compiled by the two following command:

system(paste0("pdflatex ", "document.tex")) 
system(paste0("pdflatex ", "document.tex")) 
```
By executing the file `starter.R` you will create the latex document.

I recommend to use the command:
```bash
R CMD BATCH starter.R
```
Alternatively you can copy/paste the three lines of code on the command line.

The command knit will create the file `document.tex`.

## The Rnw file
The `.Rnw` (or `Sweave`) file is in essence a .tex file in which it is possible to insert blocks of R code.

The structure of the file follows the normal structure of a LaTeX work starting with the declaration of the document class but at any point in the code you can add R blocks of code.

Those are defined between two elements: a ``<<…>>`` in which the setting of the R code blocks are passed and a `@`, that defines its end.
```r
\documentclass[a4paper]{book}
\usepackage[headsep=1cm, headheight=2cm, hmargin=1.5cm, includefoot, footskip=20pt]{geometry}
\usepackage[colorlinks=true]{hyperref} % Hyperlinks
\usepackage[T1]{fontenc} % Keep the underscore when cpy/pa
\pagestyle{fancy}
\usepackage{tocloft}
\makeatletter
\let\ps@plain\ps@fancy
\makeatother
\cfoot{\thepage\ of \pageref*{LastPage}}

\title{Latex document generated in R}
\date{\today}
\author{Mattia Cinell}

\begin{document}
\maketitle % Create cover page
\tableofcontents % Table of content

\chapter{The Rnw file}
bla bla bla 

```


