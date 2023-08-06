\name{Wool}
\alias{Wool}
\docType{data}
\title{
Data on failures of wool
}
\description{
The number of cycles before failure of a worsted yarn under cycles of repeated loading to three factors arranged in a 3^3 factorial experiment.}
\usage{data(Wool)}
\format{
  A data frame with 27 observations on the following 5 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Length}}{a numeric vector}
    \item{\code{Amplitude}}{a numeric vector}
    \item{\code{Load}}{a numeric vector}
    \item{\code{Cycles}}{a numeric vector}
  }
}
\source{
The seminal article: Box, G.E.P. and D.R. Cox (1964) \dQuote{An Analysis of Transformations (with discussion)}, \emph{Journal of the Royal Statistical Society, Series B} \bold{26}, pp.211--246.
}
\examples{
data(Wool)
str(Wool)


Lambda= (-200:200)/100
DotY = exp(mean(log(Wool$Cycles)))
RSS = RSS2 = Lambda
for(i in 1:length(Lambda)){
if(Lambda[i]==0){NewResp= DotY*log(Wool$Cycles)}
else{NewResp=(Wool$Cycles^Lambda[i] -1)/(Lambda[i]*DotY^(Lambda[i]-1))}
RSS[i] <- anova(aov(NewResp~Length+Amplitude+Load, data=Wool))["Residuals", "Sum Sq"]
RSS2[i] <- anova(aov(NewResp~Length*Amplitude*Load-Length:Amplitude:Load, 
      data=Wool))["Residuals", "Sum Sq"]
}
min(RSS)
Lambda[which.min(RSS)]
min(RSS2)
which.min(RSS2)

plot(RSS~Lambda, xlab=expression(lambda), ylim=range(c(RSS,RSS2)), ylab="Residual SS", 
      type="l", lty=2)
lines(Lambda, RSS2, col=2)
legend("topleft",  c("First order model","Second order model"), lty=c(2,1), col=c(1,2))

Lambda= (-150:100)/1000
RSS = RSS2 = Lambda
for(i in 1:length(Lambda)){
if(Lambda[i]==0){NewResp= DotY*log(Wool$Cycles)}
else{NewResp=(Wool$Cycles^Lambda[i] -1)/(Lambda[i]*DotY^(Lambda[i]-1))}
RSS[i] <- anova(aov(NewResp~Length+Amplitude+Load, data=Wool))["Residuals", "Sum Sq"]
RSS2[i] <- anova(aov(NewResp~Length*Amplitude*Load-Length:Amplitude:Load, 
      data=Wool))["Residuals", "Sum Sq"]
}

plot(RSS~Lambda, xlab=expression(lambda), ylim=range(c(RSS,RSS2)), ylab="Residual SS", 
    type="l", lty=2)
lines(Lambda, RSS2, col=2)
legend("topleft",  c("First order model","Second order model"), lty=c(2,1), col=c(1,2))

min(RSS)
which.min(RSS)
min(RSS2)
which.min(RSS2)
}
\keyword{datasets}
