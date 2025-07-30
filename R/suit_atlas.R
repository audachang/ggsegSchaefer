#' Cerebellum SUIT atlas
#'
#' Utility to retrieve the Cerebellum SUIT atlas for use with ggseg plotting functions.
#' The atlas data is available from the `ggsegExtra` package which includes
#' data derived from the SUIT project (<https://www.diedrichsenlab.org/imaging/suit.htm>).
#' This helper will return the atlas if the package is installed.
#'
#' @return A `brain_atlas` object containing the cerebellar regions.
#' @examples
#' if(requireNamespace("ggsegExtra", quietly = TRUE)) {
#'   cerebellum <- suit_atlas()
#'   ggseg::ggseg(atlas = cerebellum)
#' }
#' @export
suit_atlas <- function() {
  if (!requireNamespace("ggsegExtra", quietly = TRUE)) {
    stop("The ggsegExtra package is required to obtain the SUIT atlas.")
  }
  data(list = "suit", package = "ggsegExtra", envir = environment())
  suit
}
