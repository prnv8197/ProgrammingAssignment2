#Reading from the web'
con<-url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode<-readLines(url,nchar=10)
htmlparse<-htmlTreeParse(htmlCode)
close(con)
htmlparse