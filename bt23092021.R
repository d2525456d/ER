ipod <- sample(c(rep(1, 250),
                 rep(2,300),
                 rep(3, 600),
                 rep(4, 800),
                 rep(5, 550),
                 rep(6, 350),
                 rep(7, 100),
                 rep(8, 25),
                 rep(9, 20),
                 rep(10, 5)))
library(ggplot2)
#lay mẫu kích thước 25 50 lần
a = c()
for (i in 1:50){
  x = sample(ipod,25,replace = TRUE)
  a = c(a,x)
}
dem1=0
for (i in a){
  if (i == 1 ){dem1=dem1+1}
}
dem2=0
for (i in a){
  if (i == 2 ){dem2=dem2+1}
}
dem3=0
for (i in a){
  if (i == 3 ){dem3=dem3+1}
}
dem4=0
for (i in a){
  if (i == 4 ){dem4=dem4+1}
}
dem5=0
for (i in a){
  if (i == 5 ){dem5=dem5+1}
}
dem6=0
for (i in a){
  if (i == 6 ){dem6=dem6+1}
}
dem7=0
for (i in a){
  if (i == 7 ){dem7=dem7+1}
}
dem8=0
for (i in a){
  if (i == 8 ){dem8=dem8+1}
}
dem9=0
for (i in a){
  if (i == 9 ){dem9=dem9+1}
}
dem10=0
for (i in a){
  if (i == 10 ){dem10=dem10+1}
}
dt = data.frame(sophut = 1:10, soluongbai = c(dem1,dem2,dem3,dem4,dem5,dem6,dem7,dem8,dem9,dem10))
ggplot(data = dt,aes(x = sophut,y = soluongbai))+
  geom_histogram(posiion="stack", stat="identity")
#xac xuat bai hat 6 phut tro di
xacxuat = (dem6+dem7+dem8+dem9+dem10)/length(a)
xacxuat
#Lấy mẫu kích thước 25 500 lần
a = c()
for (i in 1:500){
  x = sample(ipod,25,replace = TRUE)
  a = c(a,x)
}
dem1=0
for (i in a){
  if (i == 1 ){dem1=dem1+1}
}
dem2=0
for (i in a){
  if (i == 2 ){dem2=dem2+1}
}
dem3=0
for (i in a){
  if (i == 3 ){dem3=dem3+1}
}
dem4=0
for (i in a){
  if (i == 4 ){dem4=dem4+1}
}
dem5=0
for (i in a){
  if (i == 5 ){dem5=dem5+1}
}
dem6=0
for (i in a){
  if (i == 6 ){dem6=dem6+1}
}
dem7=0
for (i in a){
  if (i == 7 ){dem7=dem7+1}
}
dem8=0
for (i in a){
  if (i == 8 ){dem8=dem8+1}
}
dem9=0
for (i in a){
  if (i == 9 ){dem9=dem9+1}
}
dem10=0
for (i in a){
  if (i == 10 ){dem10=dem10+1}
}
dt = data.frame(sophut = 1:10, soluongbai = c(dem1,dem2,dem3,dem4,dem5,dem6,dem7,dem8,dem9,dem10))
ggplot(data = dt,aes(x = sophut,y = soluongbai))+
  geom_histogram(posiion="stack", stat="identity")
#xac xuat bai hat 6 phut tro di
xacxuat = (dem6+dem7+dem8+dem9+dem10)/length(a)
xacxuat
#lấy mẫu kích thước 30 30 lần
a = c()
for (i in 1:30){
  x = sample(ipod,30,replace = TRUE)
  a = c(a,x)
}
dem1=0
for (i in a){
  if (i == 1 ){dem1=dem1+1}
}
dem2=0
for (i in a){
  if (i == 2 ){dem2=dem2+1}
}
dem3=0
for (i in a){
  if (i == 3 ){dem3=dem3+1}
}
dem4=0
for (i in a){
  if (i == 4 ){dem4=dem4+1}
}
dem5=0
for (i in a){
  if (i == 5 ){dem5=dem5+1}
}
dem6=0
for (i in a){
  if (i == 6 ){dem6=dem6+1}
}
dem7=0
for (i in a){
  if (i == 7 ){dem7=dem7+1}
}
dem8=0
for (i in a){
  if (i == 8 ){dem8=dem8+1}
}
dem9=0
for (i in a){
  if (i == 9 ){dem9=dem9+1}
}
dem10=0
for (i in a){
  if (i == 10 ){dem10=dem10+1}
}
dt = data.frame(sophut = 1:10, soluongbai = c(dem1,dem2,dem3,dem4,dem5,dem6,dem7,dem8,dem9,dem10))
ggplot(data = dt,aes(x = sophut,y = soluongbai))+
  geom_histogram(posiion="stack", stat="identity")
#xac xuat bai hat 6 phut tro di
xacxuat = (dem6+dem7+dem8+dem9+dem10)/length(a)
xacxuat

