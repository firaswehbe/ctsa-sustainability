# Manually building the radar plots
# Todo, sum for all variables

# Library
library(fmsb)

myanswersums = colSums(
  mysurveys[,c(
    "asctr_1_1_locus_options___1",
    "asctr_1_1_locus_options___2",
    "asctr_1_1_locus_options___3",
    "asctr_1_1_locus_options___4",
    "asctr_1_1_sust_options___1",
    "asctr_1_1_sust_options___2",
    "asctr_1_1_sust_options___3",
    "asctr_1_1_sust_options___4",
    
    "asctr_2_1_locus_options___1",
    "asctr_2_1_locus_options___2",
    "asctr_2_1_locus_options___3",
    "asctr_2_1_locus_options___4",
    "asctr_2_1_sust_options___1",
    "asctr_2_1_sust_options___2",
    "asctr_2_1_sust_options___3",
    "asctr_2_1_sust_options___4",
    
    "asctr_3_1_locus_options___1",
    "asctr_3_1_locus_options___2",
    "asctr_3_1_locus_options___3",
    "asctr_3_1_locus_options___4",
    "asctr_3_1_sust_options___1",
    "asctr_3_1_sust_options___2",
    "asctr_3_1_sust_options___3",
    "asctr_3_1_sust_options___4",
    
    "asctr_4_1_locus_options___1",
    "asctr_4_1_locus_options___2",
    "asctr_4_1_locus_options___3",
    "asctr_4_1_locus_options___4",
    "asctr_4_1_sust_options___1",
    "asctr_4_1_sust_options___2",
    "asctr_4_1_sust_options___3",
    "asctr_4_1_sust_options___4",
    
    "asctr_5_1_locus_options___1",
    "asctr_5_1_locus_options___2",
    "asctr_5_1_locus_options___3",
    "asctr_5_1_locus_options___4",
    "asctr_5_1_sust_options___1",
    "asctr_5_1_sust_options___2",
    "asctr_5_1_sust_options___3",
    "asctr_5_1_sust_options___4",
    
    "asctr_6_1_locus_options___1",
    "asctr_6_1_locus_options___2",
    "asctr_6_1_locus_options___3",
    "asctr_6_1_locus_options___4",
    "asctr_6_1_sust_options___1",
    "asctr_6_1_sust_options___2",
    "asctr_6_1_sust_options___3",
    "asctr_6_1_sust_options___4",
    
    "asctr_7_1_locus_options___1",
    "asctr_7_1_locus_options___2",
    "asctr_7_1_locus_options___3",
    "asctr_7_1_locus_options___4",
    "asctr_7_1_sust_options___1",
    "asctr_7_1_sust_options___2",
    "asctr_7_1_sust_options___3",
    "asctr_7_1_sust_options___4",
    
    "asctr_8_1_locus_options___1",
    "asctr_8_1_locus_options___2",
    "asctr_8_1_locus_options___3",
    "asctr_8_1_locus_options___4",
    "asctr_8_1_sust_options___1",
    "asctr_8_1_sust_options___2",
    "asctr_8_1_sust_options___3",
    "asctr_8_1_sust_options___4",
    
    "asctr_9_1_locus_options___1",
    "asctr_9_1_locus_options___2",
    "asctr_9_1_locus_options___3",
    "asctr_9_1_locus_options___4",
    "asctr_9_1_sust_options___1",
    "asctr_9_1_sust_options___2",
    "asctr_9_1_sust_options___3",
    "asctr_9_1_sust_options___4",
    
    "asctr_10_1_locus_options___1",
    "asctr_10_1_locus_options___2",
    "asctr_10_1_locus_options___3",
    "asctr_10_1_locus_options___4",
    "asctr_10_1_sust_options___1",
    "asctr_10_1_sust_options___2",
    "asctr_10_1_sust_options___3",
    "asctr_10_1_sust_options___4"
    
  )]
)

mymatrix = matrix(
  c(actr_1_1_locus_options___1,2,3,4,5,6,7,8,9,10,11,12,
    2,3,4,5,6,7,8,9,10,11,12,13,
    3,4,5,6,7,8,9,10,11,12,13,14),
  nrow = 3,
  ncol = 12,
  byrow = TRUE
)

# Create data: note in High school for Jonathan:
mydata=as.data.frame( matrix(mymatrix[3,],ncol=12) )
colnames(mydata)=c(
  "Res and Reg Compliance" , 
  "Grants and Contracts" , 
  "Program Evaluation" , 
  "Bio-banking Mgmt" , 
  "Clin Trial Mgmt Sys" , 
  "Elec Data Capture", 
  "Data Repositories incl EHR" , 
  "Extra Mural Data Coll", 
  "Security",
  "IT Infrastructure",
  "Governance",
  "Informatics Innovation")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
mydata=rbind(rep(16,12) , rep(0,12) , mydata)


# Custom the radarChart
png(file=paste0("output/radar_tmp.png"),width=1600,height=1200,res=150)
radarchart( mydata  , axistype=1 ,

            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,

            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,

            #custom labels
            vlcex=1
)
dev.off()

