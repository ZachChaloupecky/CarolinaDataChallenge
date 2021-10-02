## your gonna need to download and change the path to the latestcdc.csv file

latestcdc <- read_csv("Desktop/UNC/Sophomore/Fall/datachallenge/latestcdc.csv")
all <- as.data.frame(latestcdc)
all = all[-1,]
all = all[,-(1:2)]
view(all)
matt = matrix(ncol = ncol(all), nrow = nrow(all))
a = data.frame(matt)
for (i in 1:nrow(all)){
  for (u in 1:ncol(all)){
    if (is.na(all[i,u]) == TRUE){
      a[i,u] = 0
    }else{
      a[i,u] = as.numeric(all[i,u])
    }
  }
}
colnames(a) = colnames(all)
view(a)
a$Q29 = a[,"Q29.1"] + a[,"Q29.2"] + a[,"Q29.3"] + a[,"Q29.4"] + a[,"Q29.5"] + a[,"Q29.6"] + 
  a[,"Q29.7"] + a[,"Q29.8"] + a[,"Q29.9"] + a[,"Q29.10"] + a[,"Q29.11"]
a = a[,-(28:(ncol(a)-1))]
head(a)
nav = subset(a, Q15_1 == 1)
nav = nav[,-(2:23)]
head(nav)
busi = subset(a, Q15_2 == 1)
busi = busi[,-1]
busi = busi[,-(2:22)]
head(busi)
cat = subset(a, Q15_3 == 1)
cat = cat[,-(1:2)]
cat = cat[,-(2:21)]
head(cat)
trav = subset(a, Q15_4 == 1)
trav = trav[,-(1:3)]
trav = trav[,-(2:20)]
head(trav)
book = subset(a, Q15_5 == 1)
book = book[,-(1:4)]
book = book[,-(2:19)]
head(book)
pho = subset(a, Q15_6 == 1)
pho = pho[,-(1:5)]
pho = pho[,-(2:18)]
head(pho)
life = subset(a, Q15_7 == 1)
life = life[,-(1:6)]
life = life[,-(2:17)]
head(life)
ent = subset(a, Q15_8 == 1)
ent = ent[,-(1:7)]
ent = ent[,-(2:16)]
head(ent)
fin = subset(a, Q15_9 == 1)
fin = fin[,-(1:8)]
fin = fin[,-(2:15)]
head(fin)
news = subset(a, Q15_10 == 1)
news = news[,-(1:9)]
news = news[,-(2:14)]
head(news)
hea = subset(a, Q15_11 == 1)
hea = hea[,-(1:10)]
hea = hea[,-(2:13)]
head(hea)
game = subset(a)
game = game[,-(1:11)]
game = game[,-(2:12)]
head(game)
notgame = subset(a, Q15_12 == 0)
notgame = notgame[,-(1:11)]
notgame = notgame[,-(2:12)]
head(notgame)
food = subset(a, Q15_13 == 1)
food = food[,-(1:12)]
food = food[,-(2:11)]
head(food)
ed = subset(a, Q15_14 == 1)
ed = ed[,-(1:13)]
ed = ed[,-(2:10)]
head(ed)
med = subset(a, Q15_15 == 1)
med = med[,-(1:14)]
med = med[,-(2:9)]
head(med)
soc = subset(a, Q15_16 == 1)
soc = soc[,-(1:15)]
soc = soc[,-(2:8)]
head(soc)
ref = subset(a, Q15_17 == 1)
ref = ref[,-(1:16)]
ref = ref[,-(2:7)]
head(ref)
sport = subset(a, Q15_18 == 1)
sport = sport[,-(1:17)]
sport = sport[,-(2:6)]
head(sport)
uti = subset(a, Q15_19 == 1)
uti = uti[,-(1:18)]
uti = uti[,-(2:5)]
head(uti)
wea = subset(a, Q15_20 == 1)
wea = wea[,-(1:19)]
wea = wea[,-(2:4)]
head(wea)
prod = subset(a, Q15_21 == 1)
prod = prod[,-(1:20)]
prod = prod[,-(2:3)]
head(prod)
music = subset(a, Q15_22 == 1)
music = music[,-(1:21)]
music = music[,-2]
head(music)
other = subset(a, Q15_23 == 1)
other = other[,-(1:22)]
head(other)
notnav = subset(a, Q15_1 != 1)
notnav = notnav[,-(2:23)]
head(notnav)

game[,1] = as.logical(game[,1])
for (i in 1:nrow(game)) {
  if (game[i,3] == 1) {game[i,3] = "Australia" }
  else if (game[i,3] == 2) { game[i,3] = "Brazil"}
  else if (game[i,3] == 3) { game[i,3] = "Canada"}
  else if (game[i,3] == 4) { game[i,3] = "China"}
  else if (game[i,3] == 5) { game[i,3] = "France"}
  else if (game[i,3] == 6) { game[i,3] = "Germany"}
  else if (game[i,3] == 7) { game[i,3] = "India"}
  else if (game[i,3] == 8) { game[i,3] = "Italy"}
  else if (game[i,3] == 9) { game[i,3] = "Japan"}
  else if (game[i,3] == 10) { game[i,3] = "Mexico"}
  else if (game[i,3] == 11) { game[i,3] = "Republic of Korea"}
  else if (game[i,3] == 12) { game[i,3] = "Russian Federation"}
  else if (game[i,3] == 13) { game[i,3] = "Spain"}
  else if (game[i,3] == 14) { game[i,3] = "United Kingdom"}
  else if (game[i,3] == 15) { game[i,3] = "United States"}
  else { game[i,3] = "Other"}
}

for (i in 1:nrow(game)) {
  if (game[i,4] == 1) {game[i,4] = "Primary School" }
  else if (game[i,4] == 2) { game[i,4] = "Secondary/ High School"}
  else if (game[i,4] == 3) { game[i,4] = "Diploma"}
  else if (game[i,4] == 4) { game[i,4] = "Vocational Training"}
  else if (game[i,4] == 5) { game[i,4] = "Undergraduate Degree"}
  else if (game[i,4] == 6) { game[i,4] = "Master's Degree"}
  else if (game[i,4] == 7) { game[i,4] = "Doctoral Degree"}
  else { game[i,3] = "Other"}
}

for (i in 1:nrow(game)) {
  if (game[i,5] == 1) {game[i,5] = "Management Occupations" }
  else if (game[i,5] == 2) { game[i,5] = "Business and Financial Operations Occupations"}
  else if (game[i,5] == 3) { game[i,5] = "Computer and Mathematical Occupations "}
  else if (game[i,5] == 4) { game[i,5] = "Architecture and Engineering Occupations "}
  else if (game[i,5] == 5) { game[i,5] = "Life, Physical, and Social Science Occupations "}
  else if (game[i,5] == 6) { game[i,5] = "Community and Social Services Occupations "}
  else if (game[i,5] == 7) { game[i,5] = "Legal Occupations "}
  else if (game[i,5] == 8) { game[i,5] = "Education, Training, and Library Occupations "}
  else if (game[i,5] == 9) { game[i,5] = "Arts, Design, Entertainment, Sports, and Media Occupations "}
  else if (game[i,5] == 10) { game[i,5] = "Healthcare Practitioners and Technical Occupations "}
  else if (game[i,5] == 11) { game[i,5] = "Healthcare Support Occupations "}
  else if (game[i,5] == 12) { game[i,5] = "Protective Service Occupations "}
  else if (game[i,5] == 13) { game[i,5] = "Food Preparation and Serving Related "}
  else if (game[i,5] == 14) { game[i,5] = "Building and Grounds Cleaning and Maintenance Occupations"}
  else if (game[i,5] == 15) { game[i,5] = "Personal Care and Service Occupations "}
  else if (game[i,5] == 16) { game[i,5] = "Sales and Related Occupations "}
  else if (game[i,5] == 17) { game[i,5] = "Office and Administrative Support Occupations "}
  else if (game[i,5] == 18) { game[i,5] = "Farming, Fishing, and Forestry Occupations "}
  else if (game[i,5] == 19) { game[i,5] = "Construction and Extraction Occupations "}
  else if (game[i,5] == 20) { game[i,5] = "Installation, Maintenance, and Repair Occupations "}
  else if (game[i,5] == 21) { game[i,5] = "Production Occupations "}
  else if (game[i,5] == 22) { game[i,5] = "Transportation and Material Moving Occupations"}
  else if (game[i,5] == 23) { game[i,5] = "Military Specific Occupations"}
  else if (game[i,5] == 24) { game[i,5] = "Student"}
  else { game[i,5] = "Other"}
}

game = game[,-6]

write_xlsx(nav,"Desktop/UNC/Sophomore/Fall/datachallenge/navcdc.xlsx")
write_xlsx(busi,"Desktop/UNC/Sophomore/Fall/datachallenge/busicdc.xlsx")
write_xlsx(cat,"Desktop/UNC/Sophomore/Fall/datachallenge/catcdc.xlsx")
write_xlsx(trav,"Desktop/UNC/Sophomore/Fall/datachallenge/travcdc.xlsx")
write_xlsx(book,"Desktop/UNC/Sophomore/Fall/datachallenge/bookcdc.xlsx")
write_xlsx(pho,"Desktop/UNC/Sophomore/Fall/datachallenge/phocdc.xlsx")
write_xlsx(life,"Desktop/UNC/Sophomore/Fall/datachallenge/lifecdc.xlsx")
write_xlsx(ent,"Desktop/UNC/Sophomore/Fall/datachallenge/entcdc.xlsx")
write_xlsx(fin,"Desktop/UNC/Sophomore/Fall/datachallenge/fincdc.xlsx")
write_xlsx(news,"Desktop/UNC/Sophomore/Fall/datachallenge/newscdc.xlsx")
write_xlsx(hea,"Desktop/UNC/Sophomore/Fall/datachallenge/heacdc.xlsx")
write_xlsx(game,"Desktop/UNC/Sophomore/Fall/datachallenge/gamecdc.xlsx")
write_xlsx(food,"Desktop/UNC/Sophomore/Fall/datachallenge/foodcdc.xlsx")
write_xlsx(ed,"Desktop/UNC/Sophomore/Fall/datachallenge/edcdc.xlsx")
write_xlsx(med,"Desktop/UNC/Sophomore/Fall/datachallenge/medcdc.xlsx")
write_xlsx(soc,"Desktop/UNC/Sophomore/Fall/datachallenge/soccdc.xlsx")
write_xlsx(ref,"Desktop/UNC/Sophomore/Fall/datachallenge/refcdc.xlsx")
write_xlsx(sport,"Desktop/UNC/Sophomore/Fall/datachallenge/sportcdc.xlsx")
write_xlsx(uti,"Desktop/UNC/Sophomore/Fall/datachallenge/uticdc.xlsx")
write_xlsx(busi,"Desktop/UNC/Sophomore/Fall/datachallenge/busicdc.xlsx")
write_xlsx(wea,"Desktop/UNC/Sophomore/Fall/datachallenge/weacdc.xlsx")
write_xlsx(busi,"Desktop/UNC/Sophomore/Fall/datachallenge/busicdc.xlsx")
write_xlsx(prod,"Desktop/UNC/Sophomore/Fall/datachallenge/prodcdc.xlsx")
write_xlsx(music,"Desktop/UNC/Sophomore/Fall/datachallenge/musiscdc.xlsx")
write_xlsx(other,"Desktop/UNC/Sophomore/Fall/datachallenge/othercdc.xlsx")
write_xlsx(game,"Desktop/UNC/Sophomore/Fall/datachallenge/allgamecdc.xlsx")

navmod <- lm(Q15_1 ~ Q17 + Q20 + Q23 + Q27 + Q29, data = nav)
hist(nav$Q17)
hist(nav$Q20)
max(a$Q17)

mattt = matrix(ncol = ncol(all), nrow = nrow(all))
a2 = data.frame(mattt)
for (i in 1:nrow(all)){
  for (u in 1:ncol(all)){
    if (is.na(all[i,u]) == TRUE){
      a2[i,u] = 0
    }else{
      a2[i,u] = as.numeric(all[i,u])
    }
  }
}

apply(a2, MARGIN=2, FUN=mean)
colnames(a2) = colnames(all)
a2 = a2[,-(1:27)]
colnames(a2)
apply(a2, MARGIN=2, FUN=mean)
mod = lm(Q15_12 ~ Q17 + Q20 + Q23 + Q27 + Q29, data=game)
regsubsets(Q15_12 ~ Q17 + Q20 + Q23 + Q27 + Q29, data=game, method="exhaustive")
summary(mod)
game$education = as.factor(game$Q23)
view(game)
typeof(game$Q23)
write_xlsx(df,"Desktop/UNC/Sophomore/Fall/datachallenge/avgincome.xlsx")
df = as.data.frame(apply(a2, MARGIN=2, FUN=mean))

rated <- read_csv("Desktop/UNC/Sophomore/Fall/datachallenge/rated2.csv")

r = rated

view(r)

r[,12] = r[,12]*100
r[,7] = r[,7]*100



badmod <- lm(bad ~ yes, data = r)
plot(r$yes, r$bad, col = r$color, main="Predicting Bad Ratings from People who Rate by Country Average", 
     xlab="People who Rate", ylab=" % of People who Rate because the App is Bad")
abline(badmod)
legend(x="topright",
       inset = c(-.05, 0), 
       legend = r$Country,
       lty = 1,
       col = r$color,
       xpd = TRUE)
summary(idvmod)
plot(resid(idvmod))
abline(h=0)
r$rates = r[,7]+ r[,8]
colnames(r)
view(r)

