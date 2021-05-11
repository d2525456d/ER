setwd('D:\\downloads\\New folder')
Owls = read.table(file="owls.txt",header=TRUE)
names(Owls)
str(Owls)
unique(Owls$ï..Nest)

Allnests = unique(Owls$ï..Nest)
for (i in 1:length(Allnests)){
  Nest.i = Allnests[i]
  Owls.i = Owls[Owls$ï..Nest == Nest.i,]
  YourFileName = paste(Nest.i,".jpg",sep = "")
  jpeg(file = YourFileName)
  plot(x = Owls.i$SiblingNegotiation, y = Owls.i$ArrivalTime,
       xlab = "SiblingNegotiation",
       main = Nest.i,
       ylab = "ArrivalTime"
  )
  dev.off()
}

ifelse(Owls$FoodTreatment == "Satiated", Owls$NestNight <- paste(Owls$ï..Nest, "1",sep = "_"), Owls$NestNight <- paste(Owls$ï..Nest, "2",sep = "_"))
Owls
