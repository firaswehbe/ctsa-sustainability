# Frequency table
library(stringr)
#Locus
mytext1 <- tolower(mysurveys$asctr_1_1_locus_notes)
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_2_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_3_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_4_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_5_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_6_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_7_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_8_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_9_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$asctr_10_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$ci_1_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$ci_2_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$mri_1_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$og_1_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$rc_1_1_locus_notes))
mytext1 <- c(mytext1 ,tolower(mysurveys$ts_1_1_locus_notes))

mytext1 <- str_replace_all(mytext1,"[^[:alpha:]]"," ")
mytext1 <- str_replace_all(mytext1, "[[:blank:]]+", " ")
allwords1 = data.frame(table(strsplit(paste(mytext1,collapse=" ")," ")))
allwords1 <- allwords1[allwords1[,1]!="",]
allwords1 <- allwords1[!allwords1[,1] %in% c('of','am','no','a','i','in',
                                             'and','have','with','as','to',
                                             'my','for','the','on','at','so',
                                             'an','or','but','ve','about','had',
                                             'did','done','do','our','is','not',
                                             'that','this','we','by','some','any',
                                             'it','none','from','was','also','there',
                                             'into','where', 'these', 'nil', 'both',
                                             'are','don','which','them','what','such',
                                             'their','non','na','NA'),]
write.csv(allwords1,file="output/wordfreq_locus.csv",row.names=FALSE)

# Locus
mytext2 <- tolower(mysurveys$asctr_1_1_sust_notes)
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_2_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_3_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_4_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_5_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_6_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_7_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_8_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_9_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$asctr_10_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$ci_1_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$ci_2_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$mri_1_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$og_1_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$rc_1_1_sust_notes))
mytext2 <- c(mytext2 ,tolower(mysurveys$ts_1_1_sust_notes))

mytext2 <- str_replace_all(mytext2,"[^[:alpha:]]"," ")
mytext2 <- str_replace_all(mytext2, "[[:blank:]]+", " ")
allwords2 = data.frame(table(strsplit(paste(mytext2,collapse=" ")," ")))
allwords2 <- allwords2[allwords2[,1]!="",]
allwords2 <- allwords2[!allwords2[,1] %in% c('of','am','no','a','i','in',
                                             'and','have','with','as','to',
                                             'my','for','the','on','at','so',
                                             'an','or','but','ve','about','had',
                                             'did','done','do','our','is','not',
                                             'that','this','we','by','some','any',
                                             'it','none','from','was','also','there',
                                             'into','where', 'these', 'nil', 'both',
                                             'are','don','which','them','what','such',
                                             'their','non','na','NA'),]
write.csv(allwords2,file="output/wordfreq_sust.csv",row.names=FALSE)

# Comments
mytext3 <- tolower(mysurveys$asctr_1_1_comments)
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_2_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_3_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_4_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_5_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_6_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_7_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_8_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_9_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$asctr_10_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$ci_1_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$ci_2_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$mri_1_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$og_1_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$rc_1_1_comments))
mytext3 <- c(mytext3 ,tolower(mysurveys$ts_1_1_comments))


mytext3 <- str_replace_all(mytext3,"[^[:alpha:]]"," ")
mytext3 <- str_replace_all(mytext3, "[[:blank:]]+", " ")
allwords3 = data.frame(table(strsplit(paste(mytext3,collapse=" ")," ")))
allwords3 <- allwords3[allwords3[,1]!="",]
allwords3 <- allwords3[!allwords3[,1] %in% c('of','am','no','a','i','in',
                                             'and','have','with','as','to',
                                             'my','for','the','on','at','so',
                                             'an','or','but','ve','about','had',
                                             'did','done','do','our','is','not',
                                             'that','this','we','by','some','any',
                                             'it','none','from','was','also','there',
                                             'into','where', 'these', 'nil', 'both',
                                             'are','don','which','them','what','such',
                                             'their','non','na','NA'),]
write.csv(allwords3,file="output/wordfreq_comments.csv",row.names=FALSE)



# Word cloud
library(wordcloud)
png(filename="output/wordcloud_locus.png",width=1200,height=1200,res=300)
wordcloud(allwords1[,1],allwords1[,2],scale=c(2,0.5),rot.per=0.1,max.words=300,
          random.order=FALSE,colors=rainbow(20,start=0.25,end=1,v=0.6),random.color=TRUE)
dev.off()

png(filename="output/wordcloud_sust.png",width=1200,height=1200,res=300)
wordcloud(allwords2[,1],allwords2[,2],scale=c(2,0.5),rot.per=0.1,max.words=300,
          random.order=FALSE,colors=rainbow(20,start=0.25,end=1,v=0.6),random.color=TRUE)
dev.off()

png(filename="output/wordcloud_comments.png",width=1200,height=1200,res=300)
wordcloud(allwords3[,1],allwords3[,2],scale=c(2,0.5),rot.per=0.1,max.words=300,
          random.order=FALSE,colors=rainbow(20,start=0.25,end=1,v=0.6),random.color=TRUE)
dev.off()
print("Made word cloud")
