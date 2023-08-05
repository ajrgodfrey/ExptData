### data from Box, Hunter, and Hunter 2005
##      HearingAids


#'
#' Hearing Aids Data
#'
#' Data are for the number of mistakes made during hearing tests by eight subjects using six different hearing aids. The subjects are classified into categories for their  hearing loss.
#'
#' @rdname HearingAids
#' @name HearingAids
#' @format 
#'     A data frame with 48 observations on the following 4 variables.
#'  \describe{
#'    \item{\code{Person}}{a factor with levels \code{1} to \code{8}}
#'    \item{\code{Loss}}{a factor with levels \code{Marked}, \code{Severe}, \code{Slight}, or \code{Some}}
#'    \item{\code{Unit}}{a factor with levels \code{A} to \code{F}}
#'    \item{\code{Mistakes}}{a numeric vector}
#' }
#' @source Box, G.E.P., Hunter, J.S., and Hunter, W.G. (2005) \emph{Statistics for Experimenters: Design Innovation, and Discovery}, 2nd edition, Wiley, New Jersey.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage HearingAids
# HearingAids.lme = lme(sqrt(Mistakes)~ Loss*Unit, random= ~1|Person, data=HearingAids)
#anova(HearingAids.lme)
NULL
