### Data from Mead 1988
##        CabbageFlies, Detergent, PainRelief, Peppers, Turnip, Vaccine


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
#'    \item{\code{Substance}}{a factor with levels \code{1} \code{2} \code{3} \code{4} \code{5} \code{6}}
#'    \item{\code{Block}}{a factor with levels \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7} \code{8} \code{9} \code{10}}
#'    \item{\code{Eggs}}{the response variable; a count}
#' }
#' @source Mead, R. (1988) "The Design of Experiments: Statistical Principles for Practical Applications", Cambridge University Press. Example 7.10; data found in  Table 7.3 on page 145.

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
#'    \item{\code{Treatment}}{a factor with levels \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7} \code{8} \code{9}}
#'    \item{\code{Base}}{a factor with levels \code{I} \code{II} \code{None}}
#'   \item{\code{Additive}}{a factor with levels \code{0} \code{1} \code{2} \code{3} \code{Null}}
#' }
#' @source Mead, R. (1988) "The Design of Experiments: Statistical Principles for Practical Applications", Cambridge University Press. Example 12.4; data found in  Table 12.13 on page 329. 
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Detergent
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
#'    \item{\code{Period}}{a factor with levels \code{1} \code{2}}
#'    \item{\code{Drug}}{a factor with levels \code{T1} \code{T2} \code{T3}}
#'    \item{\code{Hours}}{the response variable}
#' }
#' @source Mead, R. (1988) "The Design of Experiments: Statistical Principles for Practical Applications", Cambridge University Press. Example 8.2; data found in Table 8.8 on page 200.
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
#'     \item{\code{Block}}{a factor with levels \code{1} \code{2} \code{3} \code{4}}
#'     \item{\code{Excess}}{the response variable}
#' }
#' @source Mead, R. (1988) "The Design of Experiments: Statistical Principles for Practical Applications", Cambridge University Press. Example 7.11; data found in Table 7.7 on page 148.
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
#'    \item{\code{Block}}{a factor with levels \code{B1} \code{B2} \code{B3}}
#'    \item{\code{Spacing}}{four levels stored numerically}
#'    \item{\code{Density}}{five levels stored numerically}
#'    \item{\code{SpacingF}}{a factor with levels \code{4} \code{8} \code{16} \code{32}}
#'    \item{\code{DensityF}}{a factor with levels \code{0.5} \code{2} \code{8} \code{20} \code{32}}
#' }
#' @source Mead, R. (1988) "The Design of Experiments: Statistical Principles for Practical Applications", Cambridge University Press. Example 12.3; data found in  Table 12.9 on page 323.
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
#'    \item{\code{Batch}}{a factor with levels \code{1} \code{2} \code{3} \code{4}}
#'    \item{\code{Tested}}{a response variable}
#'    \item{\code{Positive}}{a response variable}
#'    \item{\code{Area}}{a factor with levels \code{Cardiff} \code{Sheffield} \code{Staffordshire}}
#'    \item{\code{Method}}{a factor with levels \code{I} \code{MP}}
#'    \item{\code{Needle}}{a factor with levels \code{Detachable} \code{Fixed}}
#' }
#' @source Mead, R. (1988) "The Design of Experiments: Statistical Principles for Practical Applications", Cambridge University Press. Example 11.1; data found in table 11.7 on page 289.
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Vaccine
NULL


