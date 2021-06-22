a <- readLines("test.txt")

b <- extractNoun(a)

c <- unlist(b)

d <- gsub("것", "", c)

e <- d[nchar(d)>=2]

f <- sort(table(e), decreasing = T)

g <- head(f,15)

wordcloud2(g, size = 0.5, backgroundColor = "white")
