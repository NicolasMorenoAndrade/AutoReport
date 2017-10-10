pdficar<-function(){
  listareporte=c(19406,19349,19422,106286)
  if(dir.exists("~/Desktop/EccoleR/cache/")){
  system('rm -r ~/Desktop/EccoleR/cache/')
  system('rm -r ~/Desktop/EccoleR/figure/')
  file.remove("~/Desktop/GMMSaS/Advenio/InformeAdvenio/InformeAdvenio.aux")
  file.remove("~/Desktop/GMMSaS/Advenio/InformeAdvenio/InformeAdvenio.log")
}
system2('evince', args=knit2pdf(input = "~/Desktop/GMMSaS/Advenio/InformeAdvenio/InformeAdvenio.Rnw", 
                                 output = "~/Desktop/GMMSaS/Advenio/InformeAdvenio/InformeAdvenio.tex", 
                                 compiler = 'xelatex', encoding = "UTF-8", envir = environment()), 
        wait = FALSE)
  
#PARA MAC en lugar de 'evince' poner 'open'  
}

pdficar()
