# Meta analysis of the Effectiveness of Environmental Education Programs on Environmental Literacy

The study aims to integrate findings of the studies of environmental education programs and to access an overall estimate of its effectiveness on environmental literacy of elementary students. 
Among 176 studies, a total of 28 experimental studies were obtained for a systematic review inspecting the characteristics of each study that examined the effectiveness of environmental education program from 2000 to 2018. With a total of 61 effect sizes of 17 studies, which were qualified for criteria of a PRISMA chart, a meta-analysis was utilized using R.3.3.0. The results are as follows: 

[Research Questions]
* 1) What is the average effect size of environmental education programs conducted between 2000 and 2018 on environmental consumption?
* 2) What is the average effect size according to sub-factors among the effects of environmental education p rograms conducted between 2000 and 2018?
* 3) Is there a difference in the size of the environmental education program on the environmental skills of elementary school students depending on the adjustment variables (grade, number of students, number of sessions, place of progress)?


[conclusions]  
It is significant that this study tried to analyze the mean effect size of environmental literacy and statistical difference according to program characteristics. It is suggested that further study is needed to analyze the effects size of environmental literacy including other sub-factors and to discover additional significant program characteristics affecting environmental literacy.

## packages used are as follow:   R.3.3.0
* [meta](https://cran.r-project.org/web/packages/meta/meta.pdf): metacont, metamean, metareg, etc.
* [metafor](https://cran.r-project.org/web/packages/metafor/metafor.pdf) : trimfill, funnel, forest etc.

## Results

### 1. Total Effect Size on Environmental Literacy

First, the total effect size of the studies was big (d=2.488). 

![](./EL/images/1.png)


### 2. Mean Effect Size According to Sub-factors of Environmetal Literacy
Second, among the sub-factors of environmental literacy, the effect sizes of environmental function, knowledge, attitude, and behavior were higher in order, but the mean difference among groups was not statistically significant. 

![](./EL/images/2.png)

### 3. Mean Effect Size According to Interventions
Third, there was a statistical difference in the effect size according to students’ grade (grade3 > grade6 > grade5 > grade1 > grade2) and number of lessons (more than average (13 times) > less than average). 

![](./EL/images/3.png)

### 4. Publication bias
funnel plot(trim-and-fill)
![](./EL/images/4.png)

## [Reference]  
황성동. (2014). 알기쉬운 메타분석의 이해. 서울: 학지사.  
황성동. (2015). R을 이용한 메타분석. 서울 : 학지사.  
Hungerford, H. R., Volk, T. L., & Winter, A. A. (1994). Issue Investigation & Citizenship Action Training; An Instructional Model for Environmental Education. Environmental Problem Solving: Theory, Practice and Possibilities in Environmental Education. NAAEE.  
Hungerford, H., Peyton, R. B., & Wilke, R. J. (1980). Goals for Curriculum Development in Environmental Education. The Journal of Environmental Education, 11(3), 42-47.  