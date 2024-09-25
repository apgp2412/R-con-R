install.packages("CTT")
install.packages("sjPlot")

library(CTT)
library("sjPlot")

data(CTTdata)
data(CTTkey)

resp <- score(CTTdata,CTTkey,output.scored = TRUE)

CTT<-as.data.frame(resp$scored)
tab_itemscale(CTT)

distractorAnalysis(CTTdata, CTTkey)

6