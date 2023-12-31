### Data from Mead 1988
##        Abrasion, CabbageFlies, Detergent, GLCompetition, PainRelief, Peppers, Turnip, Vaccine


#'
#' Abrasion data
#'
#' Data from a 2^5 experiment. 
#'
#' @rdname Abrasion
#' @name Abrasion
#' @format 
#'   A data frame with observations on the following variables.
#'   \describe{
#' }
#' @source Data found in table 13.28 on page 380.
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Abrasion
NULL



#'
#' Cabbage Root Flies data
#'
#' Data from an experiment into the effectiveness of six substances to attract cabbage root flies. An incomplete block design  with ten blocks of three units was used.
#'
#' @rdname CabbageFlies
#' @name CabbageFlies
#' @format 
#'   A data frame with thirty observations on the following three variables.
#'   \describe{
#'    \item{\code{Substance}}{a factor with levels \code{1} to \code{6}}
#'    \item{\code{Block}}{a factor with levels \code{1} to \code{10}}
#'    \item{\code{Eggs}}{the response variable; a count}
#' }
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @source Example 7.10; data found in  Table 7.3 on page 145.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage CabbageFlies
NULL


#'
#' Detergent data
#'
#' Data from a plate washing experiment. This is an incomplete block design with 12 blocks of 3 runs to cover 9 treatments each done 4 times.
#' The number of plates is counted until the foam disappears.
#'
#' @rdname Detergent
#' @name Detergent
#' @format 
#'   A data frame with 36 observations on the following five variables.
#'   \describe{
#'    \item{\code{Block}}{a factor with levels \code{1} to \code{12}}
#'    \item{\code{Plates}}{the response variable; a count}
#'    \item{\code{Treatment}}{a factor with levels \code{1} to \code{9}}
#'    \item{\code{Base}}{a factor with levels \code{I} \code{II} \code{None}}
#'   \item{\code{Additive}}{a factor with levels \code{0} \code{1} \code{2} \code{3} \code{Null}}
#' }
#' @details Treatment: Nine formulations of detergent, 2 bases with 4 rates of additive 
#' Block structure: Three operators washed plates in parallel.  A block was 3 plates washed at the same time. 
#' @source Example 12.4; data found in  Table 12.13 on page 329. A digital copy was obtained as No. 13 of Hand et al. (1994).
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Detergent
NULL


#'
#' Grass-Legume Competition data
#'
#' Data from a split plot experiment. Three factors tested at the whole plot level are grass type, legume type, and cutting regime. The proportion of grass to legume is the subplot factor.
#'
#' @rdname GLCompetition
#' @name GLCompetition
#' @format 
#'   A data frame with observations on the following variables.
#'   \describe{
#' }
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @source Data found in table 14.15 on page 418.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage GLCompetition
NULL




#'
#' Pain Relief data
#'
#' Data from a two-period crossover experiment. 43 patients were given two of three treatments.
#'
#' @rdname PainRelief
#' @name PainRelief
#' @format 
#'   A data frame with 86 observations on the following four variables.
#'   \describe{
#'    \item{\code{Patient}}{a factor with levels \code{1} to \code{43}}
#'    \item{\code{Period}}{a factor with levels \code{1} or \code{2}}
#'    \item{\code{Drug}}{a factor with levels \code{T1}, \code{T2}, or \code{T3}}
#'    \item{\code{Hours}}{the response variable}
#' }
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @source Example 8.2; data found in Table 8.8 on page 200, and repeated in Table 10.5 on page 254.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage PainRelief
NULL

#'
#' Peppers data
#'
#' Data from a ... experiment
#'
#' @rdname Peppers
#' @name Peppers
#' @format 
#'   A data frame with 24 observations on the following 6 variables.
#'   \describe{
#'     \item{\code{Heating}}{a factor with levels \code{Extra} \code{Standard}}
#'     \item{\code{Lighting}}{a factor with levels \code{Extra} \code{Standard}}
#'     \item{\code{CO2}}{a factor with levels \code{Added} \code{c} \code{Control}}
#'     \item{\code{Year}}{a factor with levels \code{1} \code{2}}
#'     \item{\code{Block}}{a factor with levels \code{1} to \code{4}}
#'     \item{\code{Excess}}{the response variable}
#' }
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @source Example 7.11; data found in Table 7.7 on page 148. A digital copy was obtained as No. 29 of Hand et al. (1994).
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Peppers
NULL

#'
#' Turnip data
#'
#' Data from a ... experiment
#'
#' @rdname Turnip
#' @name Turnip
#' @format 
#'   A data frame with sixty observations on the following six variables.
#'   \describe{
#'    \item{\code{Yield}}{the response variable}
#'    \item{\code{Block}}{a factor with levels \code{B1} to \code{B3}}
#'    \item{\code{Spacing}}{four levels stored numerically}
#'    \item{\code{Density}}{five levels stored numerically}
#'    \item{\code{SpacingF}}{a factor with levels \code{4} \code{8} \code{16} \code{32}}
#'    \item{\code{DensityF}}{a factor with levels \code{0.5} \code{2} \code{8} \code{20} \code{32}}
#' }
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 
#' @source Example 12.3; data found in  Table 12.9 on page 323.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Turnip
NULL




#'
#' Vaccine data
#'
#' Data from a ... experiment
#'
#' @rdname Vaccine
#' @name Vaccine
#' @format 
#'   A data frame with twelve observations on the following six variables.
#'   \describe{
#'    \item{\code{Batch}}{a factor with levels \code{1} to \code{4}}
#'    \item{\code{Tested}}{a response variable}
#'    \item{\code{Positive}}{a response variable}
#'    \item{\code{Area}}{a factor with levels \code{Cardiff} \code{Sheffield} \code{Staffordshire}}
#'    \item{\code{Method}}{a factor with levels \code{I} \code{MP}}
#'    \item{\code{Needle}}{a factor with levels \code{Detachable} \code{Fixed}}
#' }
#' @references Mead, R. (1988) \emph{The Design of Experiments: Statistical Principles for Practical Applications}, Cambridge University Press. 

#' @source Example 11.1; data found in table 11.7 on page 289. A digital copy was obtained as No. 28 of Hand et al. (1994).
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Vaccine
NULL


