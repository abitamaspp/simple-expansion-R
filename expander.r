#To encrypt:

library(stringr)
en <- readLines("[your_file_to_encrypt_here].txt")
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


#To decrypt:
  
dec <- readLines("[your_file_to_decrypt_here].txt")
dec <- unlist(str_split(dec, pattern = " "))
dec <- gsub("$xxx", "", dec)
dec <- paste(paste(substr(dec, nchar(dec), nchar(dec)), 
             substr(dec, 1, nchar(dec)-1), sep = ""), 
             collapse = " ")
write.table(dec, file = "ngecoba2.txt", row.names = FALSE,
            col.names = FALSE, quote = FALSE)