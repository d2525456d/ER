setwd('D:\\downloads\\New folder')
#chuong 5 => plot=>bieu do dang x,y
#them mot so tool cho ve bieu do
#phan tich du lei
#7.1.Pie Chart
#H5N1 Avian infuenza A=>who world health organization
BFCases = read.table('BirdFluCases.txt',header=TRUE)
names(BFCases)
str(BFCases)
#thao tac thong ke so case theo nam
Cases =rowSums(BFCases[,2:16])
names(Cases)=BFCases[,1]
Cases
#ve bieu do pie chart
#bieu do chuan - standard pie chart
par(mfrow=c(2,2),mar=c(3,3,2,1))
pie(Cases,main="Stadard pie chart")
pie(Cases,main="Grey color", col=gray(seq(0.4,1.0,length=6)),clockwise=TRUE)
pie(Cases,main="rainbow color", col=rainbow(6),clockwise=TRUE)
install.packages("plotrix")
library(plotrix)
pie3D(Cases,main="3d pie chart", explode=0.1,labels=names(Cases),labelces=0.6,clockwise=TRUE)

#7.2 Bar Chart and Strip Chart
BFDeaths <- read.table(file="BirdFluDeaths.txt",
                       sep="\t",
                       header = TRUE,
                       )
names(BFDeaths)
str(BFDeaths)
Deaths <-rowSums(BFDeaths[,2:16])
names(Deaths)<-BFDeaths[,1]
Deaths


#Chia màn hình là 4 phần 2x2
par(mfrow=c(2,2), mar= c(3,3,2,1))


barplot(Cases, main="Bird Flu Cases")
Counts<-cbind(Cases, Deaths)
barplot(Counts)
barplot(t(Counts), col=gray(c(0.5,1)))
barplot(t(Counts), beside=TRUE)


Counts
t(Counts)
