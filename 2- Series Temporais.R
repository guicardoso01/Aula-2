> x <- 1:20
> y <- 20:30
> x>10
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[19]  TRUE  TRUE
> x<10
[1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE
> x>=3
[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[19]  TRUE  TRUE
> x<=2
[1]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE
> x==5
[1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE
> ls()
[1] "x" "y"
> rm(x)
> rm(list = "x","y")
Warning message:
  In rm(list = "x", "y") : object 'x' not found
> rm(list=ls())
> getwd()
[1] "C:/Users/Alunos/AppData/Local/Temp/7zO016A43EF"
> setwd("c:/EconometriaA")
> install.packages("pwt8")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/pwt8_8.1-1.zip'
Content type 'application/zip' length 2083253 bytes (2.0 MB)
downloaded 2.0 MB

package 'pwt8' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpG240Q4\downloaded_packages
> library(pwt8)
> data("pwt8.0")
> View(pwt8.0)
> br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr"))
> colnames(br) <-  c("PIB","Trabalho","Câmbio")
> plot(br$PIB)
> plot(br$PIB, type = "l")
> dados <- ts(br, start = 1950, frequency = 1)
> plot(dados, main="Dados Barsileiros", xlab="Ano")
> plot(dados, main="Dados Barsileiros", xlab="Ano", plot.type = "single")
> plot(dados, col="blue", main="Dados Barsileiros", xlab="Ano", plot.type = "single")
> plot(dados, col=c("blue","red","green"), main="Dados Barsileiros", xlab="Ano", plot.type = "single")
> write.csv(br,file = "br.csv")


