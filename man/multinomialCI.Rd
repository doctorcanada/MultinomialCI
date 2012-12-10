% File MultinomialCI/man/multinomialCI.Rd

\name{multinomialCI}
\alias{multinomialCI}
\title{Simultaneous confidence intervals for multinomial proportions (Sison-Graz method)}
\description{
Simultaneous confidence intervals for multinomial proportions, calculated according to the method of Sison and Graz
}
\author{Pablo J. Villacorta Iglesias, Department of Computer Science and Artificial Intelligence, University of Granada (Spain).

\email{pjvi@decsai.ugr.es} - \url{http://decsai.ugr.es/~pjvi}
}
\usage{
multinomialCI(x,alpha,verbose=FALSE)
}
\arguments{
\item{x}{
A vector of positive integers representing the number of occurrences of each class. The total number of samples equals the sum of such elements.
}
\item{alpha}{The significance level for the confidence intervals. Must be a real number in the interval [0, 1]}
\item{verbose}{A boolean flag indicating whether details should be printed to screen during the execution of the method, or not.
Nothing will be printed if the function is called only with the first two arguments.}
}
\details{
Given a vector of observations with the number of samples falling in each class of a multinomial distribution,
builds the simultaneous confidence intervals for the multinomial probabilities according to the method proposed by 
Sison and Glaz (1995). The R code has been translated from the SAS code written by May and Johnson (2000).
}
\value{
A k x 2 real matrix, with k being the number of classes, which matches the length of the input vector x. Row i
of the matrix contains the lower bound (first column) and upper bound (second column) defining the confidence interval 
for the probability of the i-th class, which corresponds to the i-th position of the input vector.
}
\references{
Sison, C.P and J. Glaz. Simultaneous confidence intervals and sample size determination
for multinomial proportions. Journal of the American Statistical Association, 90:366-369 (1995).
\url{http://tx.liberal.ntu.edu.tw/~purplewoo/Literature/!Methodology/!Distribution_SampleSize/SimultConfidIntervJASA.pdf}

Glaz, J. and C.P. Sison. Simultaneous confidence intervals for multinomial proportions. 
Journal of Statistical Planning and Inference 82:251-262 (1999). 

May, W.L. and W.D. Johnson. Constructing two-sided simultaneous confidence intervals for 
multinomial proportions for small counts in a large number of cells. Journal of Statistical Software 5(6) (2000).
Paper and code available at \url{http://www.jstatsoft.org/v05/i06}.
}
\examples{
# Multinomial distribution with 3 classes, from which 79 samples 
# were drawn: 23 of them belong to the first class, 12 to the 
# second class and 44 to the third class. Punctual estimations 
# of the probabilities from this sample would be 23/79, 12/79 
# and 44/79 but we want to build 95% simultaneous confidence intervals 
# for the true probabilities

m = multinomialCI(c(23,12,44), 0.05);
print(paste("First class: [", m[1,1], m[1,2], "]"));
print(paste("Second class: [", m[2,1], m[2,2], "]"));
print(paste("Third class: [", m[3,1], m[3,2], "]"));
}
\keyword{multinomial}
\keyword{confidence}
\keyword{interval}
\keyword{estimation}