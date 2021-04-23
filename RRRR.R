setwd('C:\\Users\\DELL\\Downloads\\Alo')
Owls = read.table(file = "Owls.txt", header = TRUE)
names(Owls)
str(Owls)
unique(Owls$ï..Nest)

#V??? bi???u d??? cho t???ng lo???i Nest
Owls.ATV = Owls[Owls$ï..Nest == "AutavauxTV",]
plot(x = Owls.ATV$ArrivalTime,
     y = Owls.ATV$NegPerChick,
     xlab = "Arrival Time",
     main = "AutavauxTV",
     ylab = "Negotiation behaviour")
Owls.Bot = Owls[Owls$ï..Nest=="Bochet",]
plot(x = Owls.ATV$ArrivalTime,
     y = Owls.ATV$NegPerChick,
     xlab = "Arrival Time",
     main = "Bochet",
     ylab = "Negotiation behaviour")

Allnests = unique(Owls$ï..Nest)
for (i in 1:27){
  Nest.i = Allnests[i]
  Owls.i = Owls[Owls$ï..Nest == Nest.i,]
  YourFileName = paste(Nest.i,".jpg",sep = "")
  jpeg(file = YourFileName)
  plot(x = Owls.i$ArrivalTime, y = Owls.i$NegPerChick,
       xlab = "Arrival Time",
       main = Nest.i,
       ylab = "Negotiation behaviour"
       )
  dev.off()
}



