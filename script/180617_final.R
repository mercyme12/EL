####################For META##########################
######################18.06.17########################
######################by S.J. JEONG###################

###### install.packages ######
install.packages("meta")
install.packages("metafor")
library(readxl)
library(meta)
library(car)


###### meta analysis ######
two_group=read_xlsx("cal180617_re.xlsx")
two_group
meta1a<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group)
meta1a
forest(meta1a)
forest(meta1a,comb.random=F)
forest(meta1a,comb.fixed = F)

##### meta ANOVA #####
meta2<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = grade)
forest(meta2)
meta2
meta3<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = total)
forest(meta3)
meta3
meta4<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = number)
forest(meta4)
meta4
meta5<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = place)
meta5
forest(meta5)
meta6<-metacont(n1,m1,s1,n2,m2,s2,sm="SMD",study,data=two_group,byvar = construct)
meta6
forest(meta6)


##### meta regression #####
metareg(meta1a,grade+total+number+place)
mr1<-metareg(meta6, grade)
mr1



######## funnel plot #########
funnel(meta1a,comb.random=FALSE)
metabias(meta1a)
summary(meta1a)
meta1a<-trimfill(meta1a,comb.fixed=TRUE)
summary(meta1a)
funnel(trimfill(meta1a))


