### data from Box, Hunter, and Hunter 2005
##      HearingAids, Wool (to fix)
##      Examples, tables, figures, pages,  and problems

#'
#' Data from BHH2 (2005)
#'
#' Data for many examples and exercises from BHH2 (2005) was obtained in ASCII format and has been prepared for use as R data. More rigorous preparation will be required for many of the datasets.
#'
#' @rdname BHH2_2005
#' @name BHH2_2005
#' @format 
#'     All data is stored as a data frame. In order to remove confusion with data from other texts, all data names start with BHH2_, e.g. exe0202.csv is now BHH2_exe0202  
#' @references Box, G.E.P., Hunter, J.S., and Hunter, W.G. (2005) \emph{Statistics for Experimenters: Design Innovation, and Discovery}, 2nd edition, Wiley, New Jersey.
#' @author contributed by A. Jonathan R. Godfrey
#' @seealso \link{HearingAids} \link{Wool}
NULL

#'
#' Hearing Aids Data from BHH2
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
#' @references Box, G.E.P., Hunter, J.S., and Hunter, W.G. (2005) \emph{Statistics for Experimenters: Design Innovation, and Discovery}, 2nd edition, Wiley, New Jersey.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage HearingAids
#' @examples
#' library(nlme)
#' HearingAids.lme = lme(sqrt(Mistakes)~ Loss*Unit, random= ~1|Person, data=HearingAids)
#anova(HearingAids.lme)
NULL

#'
#' Wool Data from BHH2
#'
#' The number of cycles before failure of a worsted yarn under cycles of repeated loading to three factors arranged in a 3^3 factorial experiment.
#'
#' @rdname Wool
#' @name Wool
#' @format 
#'     A data frame with 27 observations on the following five variables.
#'  \describe{
#'    \item{\code{X}}{a numeric vector}
#'    \item{\code{Length}}{a numeric vector}
#'    \item{\code{Amplitude}}{a numeric vector}
#'    \item{\code{Load}}{a numeric vector}
#'    \item{\code{Cycles}}{a numeric vector}
#' }
#' @references Box, G.E.P., Hunter, J.S., and Hunter, W.G. (2005) \emph{Statistics for Experimenters: Design Innovation, and Discovery}, 2nd edition, Wiley, New Jersey.
#'  G.E.P. and D.R. Cox (1964) \dQuote{An Analysis of Transformations (with discussion)}, \emph{Journal of the Royal Statistical Society, Series B} \bold{26}, pp.211--246.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Wool
NULL
