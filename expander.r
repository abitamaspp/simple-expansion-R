#untuk enkrip

library(stringr)
en <- readLines("ngecoba.txt")
#file ngecoba.txt berada pada working directory, sehingga
#perlu ditulis path directory secara lengkap
en <- unlist(str_split(en, pattern = " "))
en <- paste(paste(substr(en, 2, nchar(en)), 
            substr(en, 1, 1), "xxx", sep = ""),
            collapse = " ")
write.table(en, file = "ngecobaa.txt", row.names = FALSE, 
            col.names = FALSE, quote = FALSE)
#argumen "file ="  pada fungsi write.table berfungsi untuk
#memberikan nama file
#apabila tidak menulis path directory, maka file ciphertext
#secara default akan tersimpan di working directory


#untuk dekrip:
  
dek <- readLines("ngecobaa.txt")
dek <- unlist(str_split(dek, pattern = " "))
dek <- gsub("$xxx", "", dek)
dek <- paste(paste(substr(dek, nchar(dek), nchar(dek)), 
             substr(dek, 1, nchar(dek)-1), sep = ""), 
             collapse = " ")
write.table(dek, file = "ngecoba2.txt", row.names = FALSE,
            col.names = FALSE, quote = FALSE)