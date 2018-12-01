install.packages("stringr")
library(stringr)

setwd("C:/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/APIs/python3/Corpus_AcaoSocial")

files_rawdat <- c("acao_social.txt", "banco_volunt.txt", "club_emprego.txt",
                  "com_prot_cj.txt", "encontro.txt", "gab_acomp_psic.txt",
                  "habit_socal.txt", "loja_social.txt", "paredes_ajuda.txt",
                  "paredes_iguald.txt", "proj_inclusao.txt", "prot_idoso.txt",
                  "rede_social.txt", "teleassistencia.txt")

# General Case:
for (corp in 1:length(files_rawdat)) {
  
  text_vector <- as.character()
  text_vector <- readLines(files_rawdat[corp], encoding = "UTF-8")
  #print(text_vector)
  
  ## discard last lines concerning content irrelevant to work
  text_vector <- text_vector[1:(length(text_vector)-85)]
  
  ## discard first lines concerning content irrelevant to work
  text_vector <- text_vector[(339+1):length(text_vector)]
  
  count <- 1
  text_vector_clean <- as.character()
  
  for(i in 1:length(text_vector)){
    if(text_vector[i] != "" & text_vector[i] != " ") {
      text_vector_clean[count] <- text_vector[i]
      count <- count + 1
    }
  }
  
  writeLines(text_vector_clean, files_rawdat[corp], useBytes=T)
  
}


# Special Cases:
for (corp in 1:length(files_rawdat)) {
  
  text_vector_clean <- as.character()
  text_vector_clean <- readLines(files_rawdat[corp], encoding = "UTF-8")
  #print(text_vector_clean)
  
  if(corp == 1){
    text_vector_clean <- text_vector_clean[c(22, 32:length(text_vector_clean))]
  }
  if(corp == 2){
    text_vector_clean <- text_vector_clean[c(30, 40:69, 74:length(text_vector_clean))]
  }
  if(corp == 3){
    text_vector_clean <- text_vector_clean[30:length(text_vector_clean)]
  }
  if(corp == 4){
    text_vector_clean <- text_vector_clean[c(23, 25:length(text_vector_clean))]
  }
  if(corp == 5){
    text_vector_clean <- text_vector_clean[c(27, 34:length(text_vector_clean))]
  }
  if(corp == 6){
    text_vector_clean <- text_vector_clean[c(30, 32:length(text_vector_clean))]
  }
  if(corp == 7){
    text_vector_clean <- text_vector_clean[c(23:26, 28:length(text_vector_clean))]
  }
  if(corp == 8){
    text_vector_clean <- text_vector_clean[c(30, 33, 35:length(text_vector_clean))]
  }
  if(corp == 9){
    text_vector_clean <- text_vector_clean[c(23, 25:length(text_vector_clean))]
  }
  if(corp == 10){
    text_vector_clean <- text_vector_clean[c(31, 50:62, 65:67, 69:(length(text_vector_clean)-1))]
  }
  if(corp == 11){
    text_vector_clean <- text_vector_clean[c(32, 34:(length(text_vector_clean)-1))]
  }
  if(corp == 12){
    text_vector_clean <- text_vector_clean[c(27, 31:length(text_vector_clean))]
  }
  if(corp == 13){
    text_vector_clean <- text_vector_clean[c(23, 25:(length(text_vector_clean)-9))]
  }
  if(corp == 14){
    text_vector_clean <- text_vector_clean[27:length(text_vector_clean)]
  }
  
  writeLines(text_vector_clean, files_rawdat[corp], useBytes=T)
  
}


#-----------



# items Case:
for (corp in 1:length(files_rawdat)) {
  
  text_vector <- as.character()
  text_vector <- readLines(files_rawdat[corp], encoding = "UTF-8")
  #print(text_vector)
  
  text_vector_n <- as.character()
  j <- 1
  flag <- 1
  
  for(i in 1:length(text_vector)) {
    if(str_detect(text_vector[i], pattern = "^  *") & str_detect(text_vector[i], pattern = ";$")){
      if(str_detect(text_vector[i], pattern = ".$")){
        x <- strsplit(text_vector[i], "[.]")
        for(m in 1:length(x[[1]])){
          if(m == 1){
            f <- x[[1]][m]
          }
          else if(m == length(x[[1]])){
            s <- paste(tolower(substr(x[[1]][m], 2, 2)), substr(x[[1]][m], 3, nchar(x[[1]][m])), sep = "")
            f <- str_c(f, ", ", s)
          }
          else{
            s <- paste(tolower(substr(x[[1]][m], 2, 2)), substr(x[[1]][m], 3, nchar(x[[1]][m])), sep = "")
            f <- str_c(f, ", ", s)
          }
        }
        text_vector[i] <- f
      }
      
      if(flag == 1)
        text_vector_n[j] <- ""
      
      text_vector_n[j] <- str_c(text_vector_n[j], str_replace(text_vector[i], "[*]", ""))
      flag <- 0
    }
    
    else if(str_detect(text_vector[i], pattern = "^  *") & str_detect(text_vector[i], pattern = "[.$]")){
      if(str_detect(text_vector[i], pattern = ".$")){
        x <- strsplit(text_vector[i], "[.]")
        for(m in 1:length(x[[1]])){
          if(m == 1){
            f <- x[[1]][m]
          }
          else if(m == length(x[[1]])){
            s <- paste(tolower(substr(x[[1]][m], 2, 2)), substr(x[[1]][m], 3, nchar(x[[1]][m])), sep = "")
            f <- str_c(f, ", ", s, ".")
          }
          else{
            s <- paste(tolower(substr(x[[1]][m], 2, 2)), substr(x[[1]][m], 3, nchar(x[[1]][m])), sep = "")
            f <- str_c(f, ", ", s)
          }
        }
        text_vector[i] <- f
      }
      
      if(flag == 1)
        text_vector_n[j] <- ""
      
      text_vector_n[j] <- str_c(text_vector_n[j], str_replace(text_vector[i], "[*]", ""))
      j <- j+1
      flag <- 1
    }
    
    else if(str_detect(text_vector[i], pattern = "^  *")){
      if(flag == 1){
        text_vector_n[j] <- ""
        text_vector_n[j] <- str_c(text_vector_n[j], str_replace(text_vector[i], "[*]", ""))
        flag <- 0
      }
      else{
        text_vector_n[j] <- str_c(text_vector_n[j], ";", str_replace(text_vector[i], "[*]", ""))
      }
      
      if(i != length(text_vector)){
        if(!(str_detect(text_vector[i+1], pattern = "^  *"))){
          text_vector_n[j] <- str_c(text_vector_n[j], ".")
          
          j <- j+1
          flag <- 1
        }
      }
      else{
        flag <- 0 
      }
    }
    
    else{
      text_vector_n[j] <- text_vector[i]
      j <- j+1
      flag <- 1
    }
  }
  
  
  writeLines(text_vector_n, files_rawdat[corp], useBytes=T)
  
}
