#' Data from Cochran and Cox (1957)
#'
#' Datasets from Cochran and Cox (1957) are found in a variety of places. Not all sources state which tables they have used from the original source so some digging was required.
#'
#' @name CC1957
#' @rdname CC1957
#' @details The data has been cleaned if it is included in this package; other sources are mentioned here. 
#' @references   Cochran, W.G. and Cox, G.M.  (1957) \emph{Experimental Designs}, Second edition, John Wiley & Sons, New York. 
#' @author contributed by A. Jonathan R. Godfrey
#' @seealso DairyCow, 
#' Table 3.1 on page 46 `agridat::cochran.eelworms` gives counts of eelworms before and after fumigant treatments;
#' Table 4.1 on page 97 `agridat::cochran.crd` has potato scab infection with sulfur treatments;
#' Table 4.7 on page 122 `agridat::cochran.latin` is a Latin square design in wheat;
#' Table 6.3 on page 189 \link{Beans} and `agridat::cochran.factorial` is a factorial experiment for bean yield;
#' Table 7.5 on page 300 `faraway::choccake` is a chocolate cake experiment with a split plot design;
#' Table 11.1 p444 \link{BeefTender};
#' Table 11.2 on page 448 `agridat::cochran.bib` is a multi-environment trial of corn in a  balanced incomplete block design;
#' Table 11.1a on page 453 `AlgDesign::CCTable11.1a`; 
#' Table 11.3a p. 456;
#' Table 12.5 on page 490 `agridat::cochran.lattice` is a balanced lattice experiment in bool weevil attacks on cotton.
NULL

#' 
#' Factorial experiment for Bean Yield
#' 
#' A 2^4 experiment in two blocks; blocks are confounded with the four-way interaction, but there are two replicates within each block.
#' 
#' @rdname Beans
#' @name Beans
#' @format A data.frame with 32 observations. Variables are \code{Block}, \code{Yield}, and the four treatment factors. 
#' Factors are \code{D} = Dung, \code{N}=Nitrochalk, \code{P}=Superphosphate, and \code{K}=Muriate of potash.
All were Absent (-1) or present (1).
#' @source Table 6.3 on page 189.
#' @references   Cochran, W.G. and Cox, G.M.  (1957) \emph{Experimental Designs}, Second edition, John Wiley & Sons, New York. 
#' @author contributed by A. Jonathan R. Godfrey
#' @usage Beans
NULL
