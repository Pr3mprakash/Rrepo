install.packages("openxlsx")
library("openxlsx")

write.xlsx(df[5], file = "C:/Users/Princ3-PC/Desktop/My project/R data/Book2.xlsx",
           sheetName = "Sheet1", append = FALSE)

nrow(df)