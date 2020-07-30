#' @title .pdfExport
#'
#' @description Open a new .pdf and right in it. IMPORTANT : Set your working directory and use the function dev.off after your code.
#'
#' @param FileName Name of the .pdf file you export
#' @param date If date = TRUE, it will automatically add date to your file's name
#'
#' @importFrom grDevices pdf
#'
#' @export
#'
#' @examples
#' \dontrun{
#' .pdfExport("the Devil on the night", date = TRUE)
#' }
#'
.pdfExport = function(FileName, date = TRUE)
{
   if (date == TRUE){
      pdf(file = paste(Sys.Date()," - ",FileName,".pdf",sep=""))
   }else{
      pdf(file = paste(FileName,".pdf",sep=""))
   }

}
