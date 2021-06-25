install.packages("tidyverse")
install.packages("ggplot2")
install.packages("RColorBrewer")

#1
ggplot2::ggplot(data=diamonds, 
                mapping=aes(x=cut, y=))+geom_bar(fill="skyblue")

#2
ggplot2::ggplot(data=diamonds, 
                mapping=aes(x=cut, fill=cut))+geom_bar()

#3
ggplot2::ggplot(data=diamonds, mapping=aes(x=cut, fill=cut))+geom_bar()+theme_minimal()+labs(title = "Cout of Diamonds", x="Cut", y="frequency")+theme(plot.title = element_text(size = 20, color="red", face="bold"),axis.title.x = element_text(size = 15, color="blue", face="italic"),axis.title.y = element_text(size = 15, color="skyblue", face="bold.italic", angle = 0))


