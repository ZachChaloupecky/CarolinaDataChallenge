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
game = subset(a, Q15_12 == 1)
game = game[,-(1:11)]
game = game[,-(2:12)]
head(game)
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

