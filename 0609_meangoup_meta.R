####################For META##########################
######################18.06.09########################
######################by S.J. JEONG###################

install.packages("meta")
install.packages("metafor")
library(meta)
library(metafor)

setwd("D:/RRR")
two_group=read_excel("meta_meangroup.xlsx")
two_group
meta1a<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group)
meta1a
forest(meta1a)
forest(meta1a,comb.random=F)
forest(meta1a,comb.fixed = F)

###read the file###
two_group=read_excel("meta_factor_moderator_recoding_number.xlsx")
two_group
meta1a<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group)
meta1a
forest(meta1a)
forest(meta1a,comb.random=F)
forest(meta1a,comb.fixed = F)
meta2<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = grade)
summary(meta2)
forest(meta2)
meta3<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = total)
summary(meta3)
forest(meta3)
meta4<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = number)
summary(meta4)
forest(meta4)


funnel(meta1a,comb.random=FALSE)
metabias(meta1a)

funnel(meta1a, comb.random=FALSE)
summary(meta1a)
meta1a<-trimfill(meta1a,comb.fixed=TRUE)
summary(meta1a)


### decrease margins so the full space is used
par(mar=c(5,4,1,2))

### fit random-effects model
res <- rma(yi, vi, data="meta_factor_moderator_recoding_number.xlsx", measure="OR")

### carry out trim-and-fill analysis
taf <- trimfill(res)

### draw funnel plot with missing studies filled in
funnel(taf)


two_group=read_xlsx("meta_factor.xlsx")
two_group
meta5<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group)
meta5
meta6<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = factor)
summary(meta6)
forest(meta6)

two_group=read_xlsx("meta_factor1.xlsx")
two_group
meta7<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group)
meta7
meta8<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = factor)
summary(meta8)
forest(meta8)


two_group=read_xlsx("meta_factor2.xlsx")
two_group
meta9<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group)
meta9
meta10<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = factor)
summary(meta10)
forest(meta10)


install.packages("esc")
library(esc)
effect_sizes("")