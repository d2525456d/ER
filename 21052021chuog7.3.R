#S??? d???ng Boxplots d??? hi???n th??? d??? li???u Owl Data
setwd('D:\\downloads\\New folder')
# Roulin và Bersier (2007)
# Xem xét hành vi c???a con cú con xem nó ph???n ???ng nhu th??? nào?
# khi mà có s??? hi???n di???n c???a cú b???, cú m????
#21.30 d???n 5.30 qua 2 dêm
Owls <- read.table(file = "Owls.txt", header= TRUE)
names(Owls)
str(Owls)
boxplot(Owls$NegPerChick)
par(mfrow= c(2,2), mar= c(3,3,2,1))
boxplot(NegPerChick ~ SexParent, data = Owls)
boxplot(NegPerChick ~ FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment,
        names= c("F/Dep","M/Dep","F/Sat","M/Sat"), 
        data = Owls)
boxplot(NegPerChick ~ï..Nest, data = Owls)


par(mar=c(2,2,3,3))
boxplot(NegPerChick ~ ï..Nest, 
        data = Owls,
        axes=FALSE, 
        ylim=c(-3,8.5))
axis(2, at=c(0,2,4,6,8))
text(x=1:27, y=-2, 
     labels= levels(Owls$Nest),
     cex=0.75, srt=65)


#7.3 Boxplot s??? d???ng cho d??? li???u sinh v???t bi???n RIKZ2.txxt
#V??? bi???u d??? Boxplot gi???a
#Richness ~ Beach
R2 <- read.table(file = "RIKZ2.txt", header= TRUE)
names(R2)
str(R2)
par(mfrow= c(2,2), mar= c(3,3,2,1))
boxplot(Richness ~ Beach, 
        data = R2)

boxplot(Richness ~ Beach, 
        data = R2,
        col="grey",xlab="Richness",ylab="Beach")
veg <- read.table(file = "vegetation2.txt", header= TRUE)
names(veg)
str(veg)
boxplot(R ~ Transect, 
        data = veg,
        col="grey",xlab="R",ylab="Transect")
