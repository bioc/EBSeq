\name{EBSeq_NingLeng-package}
\alias{EBSeq_NingLeng-package}
\alias{EBSeq_NingLeng}
\docType{package}
\title{
EBSeq: RNA-Seq Differential Expression Analysis on both gene and isoform level 
}
\description{
In 'EBSeq_NingLeng-package,' a Negative Binomial-beta model was built to analyze the RNASeq data. We used the empirical bayes method and EM algrithom.
}
\details{
\tabular{ll}{
Package: \tab EBSeq_NingLeng\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-06-13\cr
License: \tab What license is it under?\cr
LazyLoad: \tab yes\cr
}
}
\author{
Ning Leng,Xiuyu Ma, Christina Kendziorski, Michael A. Newton

Maintainer: Ning Leng  <lengning1@gmail.com>> Xiuyu Ma <watsonforfun@gmail.com>
}
\references{
Ning Leng, John A. Dawson, James A. Thomson, Victor Ruotti, Anna I. Rissman, Bart M.G. Smits, Jill D. Haag, Michael N. Gould, Ron M. Stewart, and Christina Kendziorski. EBSeq: An empirical Bayes hierarchical model for inference in RNA-seq experiments. Bioinformatics (2013)
}
\keyword{ package }
\seealso{
EBTest, EBMultiTest
}
\examples{
data(GeneMat)
GeneMat.small = GeneMat[c(1:10,511:550),]
Sizes = MedianNorm(GeneMat.small)
EBOut = EBTest(Data=GeneMat.small, 
	Conditions=as.factor(rep(c("C1","C2"), each=5)), 
	sizeFactors=Sizes, maxround=5)
}
