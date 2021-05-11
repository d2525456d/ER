#Bài 1:
setwd('D:\\downloads\\New folder')
Owls = read.table(file="owls.txt",header=TRUE) #lƯu dữ liệu về
names(Owls)
str(Owls)
unique(Owls$ï..Nest)

Allnests = unique(Owls$ï..Nest)
for (i in 1:length(Allnests)){ # chạy từ 1 đến độ dài của Allnest
  Nest.i = Allnests[i] # lưu Allnest ở vị trí i vào Nest.i
  Owls.i = Owls[Owls$ï..Nest == Nest.i,]
  YourFileName = paste(Nest.i,".jpg",sep = "")# tên file lưu vào máy
  jpeg(file = YourFileName)
  plot(x = Owls.i$SiblingNegotiation, y = Owls.i$ArrivalTime, #BiẾn x và biến y
       xlab = "SiblingNegotiation", # Tên cột x
       main = Nest.i, # tên tiêu đề
       ylab = "ArrivalTime" #teen cột y
  )
  dev.off()
}
# bài 2
Owls = read.table(file="Owls.txt",header=TRUE,dec = ".")# lấy dữ liệu về
names(Owls)
str(Owls)
ifelse(Owls$FoodTreatment == "Satiated", Owls$NestNight <- paste(Owls$ï..Nest, "1",sep = "_"), Owls$NestNight <- paste(Owls$ï..Nest, "2",sep = "_"))
# hàm ifelse khi FoodTreatment là satiated thì paste vào cột mới vào là NestNight dữ liệu là cột Nest và _1
# và ngược lại là _2
head(Owls)#in ra những cột đầu

AllNestsNights= unique(Owls$NestNight)
N=length(AllNestsNights)# chiều dài của AllNestNights
for (i in 1:N){
  NestNight.i = as.character(AllNestsNights[i]) # đưa về dạng character
  print(NestNight.i)
  Owlsi = Owls[Owls$NestNight == NestNight.i ,]
  YourFileName = paste(NestNight.i,".jpg",sep = "")# tên file để lưu về
  jpeg(file = YourFileName)
  plot(x = Owlsi$ArrivalTime,y=Owlsi$NegPerChick,#BiẾn x và biến y
       xlab ="Arrival Time",#tên cột x
       ylab ="Sibling negotiation",# Tên cột y
       main = NestNight.i)# Tên tiêu đề
  dev.off()
}
