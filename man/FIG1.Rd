% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fermicatsR.R
\docType{data}
\name{FIG1}
\alias{FIG1}
\title{1FIG (First Fermi-LAT Inner Galaxy point source Catalog)}
\format{A data frame with 31 variables on 48 gamma-ray sources.}
\source{
\url{http://adsabs.harvard.edu/abs/2016ApJ...819...44A}
}
\usage{
FIG1
}
\description{
First Fermi-LAT Inner Galaxy point source Catalog (1FIG).
Ajello, M. et al., The Astrophysical Journal, 819, 44 (2016).
}
\details{
Results from Table 3 and Table 7 of the journal article.
}
\section{Fields}{
 
\describe{
\item{\code{Source_Name}}{1FIG JHHMM.m+DDMM, constructed according to IAU Specifications for Nomenclature; 
m is decimal minutes of R.A.; in the name R.A. and decl. are truncated at 0.1 decimal minutes and 1' , respectively}
\item{GLON}{Galactic Longitude, degrees}
\item{GLAT}{Galactic Latitude, degrees}
\item{dTH}{Deltatheta, 95\% confidence region, deg}
\item{TS}{Test Statistic}
\item{F_PSR_INT}{1-100 GeV flux, Pulsars Intensity-scaled, 10^{-9} ph cm^{-2} s^{-1}}
\item{F_PSR_IND}{1-100 GeV flux, Pulsars Index-scaled, 10^{-9} ph cm^{-2} s^{-1}}
\item{F_PSR_INT}{1-100 GeV flux, OBstars Intensity-scaled, 10^{-9} ph cm^{-2} s^{-1}}
\item{F_PSR_INT}{1-100 GeV flux, OBstars Index-scaled, 10^{-9} ph cm^{-2} s^{-1}}
\item{TYPE}{Spectral type, PowerLaw (PL) or LogParabola (LP)}
\item{A_PSR_INT}{alpha, Pulsars Intensity-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_A_PSR_INT}{uncertainty in alpha, Pulsars Intensity-scaled}
\item{B_PSR_INT}{beta, Pulsars Intensity-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_B_PSR_INT}{uncertainty in beta, Pulsars Intensity-scaled}
\item{EB_PSR_INT}{Eb, Pulsars Intensity-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{A_PSR_IND}{alpha, Pulsars Index-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_A_PSR_IND}{uncertainty in alpha, Pulsars Index-scaled}
\item{B_PSR_IND}{beta, Pulsars Index-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_B_PSR_IND}{uncertainty in beta, Pulsars Index-scaled}
\item{EB_PSR_IND}{Eb, Pulsars Index-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{A_OB_INT}{alpha, OBstars Intensity-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_A_OB_INT}{uncertainty in alpha, OBstars Intensity-scaled}
\item{B_OB_INT}{beta, OBstars Intensity-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_B_OB_INT}{uncertainty in beta, OBstars Intensity-scaled}
\item{EB_OB_INT}{Eb, OBstars Intensity-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{A_OB_IND}{alpha, OBstars Index-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_A_OB_IND}{uncertainty in alpha, OBstars Index-scaled}
\item{B_OB_IND}{beta, OBstars Index-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{UNC_B_OB_IND}{uncertainty in beta, OBstars Index-scaled}
\item{EB_OB_IND}{Eb, OBstars Index-scaled, for spectral model dN/dE ~ (E/Eb)^{-alpha -beta*log(E/Eb)}}
\item{ASSOC_3FGL}{3FGL association}
}
}
\keyword{datasets}

