### Some general structures
##     Std8Runs, Std16Runs, Std32Runs
# Taguchi8 Taguchi16

#'
#' Unreplicated 2^k Experiments in Standard (Yates) Order
#' 
#'  Each dataset has factors A, B, C, ... coded as -1 and 1 for the low and high levels of each two-level factor. Examples exist for three, four, and five factors.
#' 
#' @rdname Std8Runs
#' @name Std8Runs
#' @aliases Std16Runs Std32Runs
#' @format a dataframe with a column for each factor and 2^k rows, where k=3,4,5
#' @source Take your pick. 
#' @author created by A. Jonathan R. Godfrey, to whom no credit for these datasets  is justified.
NULL

#'
#' Unreplicated 2^k Experiments in Taguchi form
#' 
#'  Each structure has columns c1, c2, ...coded as -1 and 1 for the low and high levels of each two-level factor. 
#' 
#' @rdname Taguchi8
#' @name Taguchi8
#' @aliases Taguchi16#' @format a dataframe with a column for each factor and 2^k rows, all 2^k -1 columns for the full set of main and interaction effects , where k=3 or 4
#' @source Take your pick. 
#' @author created by A. Jonathan R. Godfrey, to whom no credit for these datasets  is justified.
NULL
