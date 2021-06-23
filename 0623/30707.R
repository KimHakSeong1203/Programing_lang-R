useNIADic()

a <- readLines("307.txt")

b <- extractNoun(a)

c <- unlist(b)

d <- gsub("것", "", c)

e <- d[nchar(d)>=2]

f <- sort(table(e), decreasing = T)

g <- head(f,50)

h <-as.data.frame(g)

h <- rename(h, word=e)

ggplot(data=h, aes(y=reorder(word, Freq), x=Freq))+geom_col() + coord_flip()

wordcloud2(h, size=0.3, backgroundColor = 'black', color='random-light', shape="")

install.packages("ggplot2")
