#' @title .xlsxExport
#'
#' @description Export a data.frame as an .xlsx file. Don't forget to set wour working directory before using it.
#'
#' @param TableExport Name of the data frame you wan't to export as .xlsx file
#' @param FileName Name of the file you export.
#' @param SheetName Name of the sheet in the .xlsx file
#' @param date If date = TRUE, date will automatically write in the FileName
#'
#' @importFrom xlsx write.xlsx
#'
#' @export
#'
#' @examples
#' \dontrun{
#' .xlsxExport(data,"data from devil","Devils", date = TRUE)}
#'
.xlsxExport = function(TableExport,FileName,SheetName,date = TRUE)
{
   DataExcel = as.data.frame(TableExport)
   setwd("C:/Users/PAUL/Desktop")

   if (date == TRUE){
      FileTitle = paste(Sys.Date()," - ",FileName,".xlsx",sep="")
   }else{
      FileTitle = paste(FileName,".xlsx",sep="")
   }

   write.xlsx(DataExcel, file = FileTitle ,sheetName=SheetName,append = TRUE,row.names=FALSE)

}

