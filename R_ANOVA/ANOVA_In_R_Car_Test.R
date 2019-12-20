# Read csv file in R
library(xlsx)
my_data <- read.xlsx("D:\\Data Science By Sir\\16.12.2019 One_Way_ANOVA\\ANOVA_Car.xlsx",sheetIndex=1)
View(my_data)
fix(my_data)
head(my_data)
# Box plots
# ++++++++++++++++++++
# Plot weight by group and color by group
library("ggpubr")
ggboxplot(my_data, x = "Crash_Test", y = "Group", 
          color = "Group", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("Compact_Car", "Midsize_Car", "Full_Size_Car"),
          ylab = "Crash_Test", xlab = "Group")
# Box plot
boxplot(Crash_Test ~ Group, data = my_data,
        xlab = "Group", ylab = "Crash_Test",
        frame = FALSE, col = c("#00AFBB", "#E7B800", "#FC4E07"))
# Compute the analysis of variance
res.aov <- aov(Crash_Test ~ Group, data = my_data)
# Summary of the analysis
summary(res.aov)