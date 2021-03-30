## A.Changenet on the 30th March 2021
## Function to add tags on pdf files from Rstudio using exiftool directly

# Extract the directory of the file


pdf_keywords <- function(file, Keywords){
  file <- shQuote(fs::path_expand(file))
  system(stringr::str_c(
    "exiftool -overwrite_original",
    " -Keywords=", Keywords, 
    " ", file),
    intern = TRUE)
}


## Example: 

# file <- paste0("~/Google Drive/Cours/MOOC_Recherche_Reproductible/",MyVAR,"Test.pdf")
# Keywords <- ":MOOC::TEST:"

# pdf_keywords(~/Google Drive/Cours/MOOC_Recherche_Reproductible/",MyVAR,"Test.pdf, ":MOOC::TEST:")