#To encrypt:

library(stringr)
en <- readLines("file_to_encrypt.txt")

#if the file to encrypt not located at working directory,
#you need to write its complete path directory

en <- unlist(str_split(en, pattern = " "))
en <- paste(paste(substr(en, 2, nchar(en)), 
            substr(en, 1, 1), "xyz", sep = ""),
            collapse = " ")
write.table(en, file = "encrypted.txt", row.names = FALSE, 
            col.names = FALSE, quote = FALSE)
#"file =" param used to name encrypted file/output file
#If you don't write its complete path directory, then by default
#it will be saved at your working directory




#To decrypt:
  
dec <- readLines("file_to_decrypt.txt")

#if the file to dencrypt not located at working directory,
#you need to write its complete path directory

dec <- unlist(str_split(dec, pattern = " "))
dec <- gsub("$xyz", "", dec)
dec <- paste(paste(substr(dec, nchar(dec), nchar(dec)), 
             substr(dec, 1, nchar(dec)-1), sep = ""), 
             collapse = " ")
write.table(dec, file = "decrypted.txt", row.names = FALSE,
            col.names = FALSE, quote = FALSE)
			
#"file =" param used to name decrypted file/output file
#If you don't write its complete path directory, then by default
#it will be saved at your working directory