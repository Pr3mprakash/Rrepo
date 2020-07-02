install.packages("RMySQL")
library("RMySQL")

db_user <- 'root'
db_password <- 'admin123'
db_name <- 'world'
db_table <- 'city'
db_host <- '127.0.0.1' # for local access
db_port <- 3306


mydb <-  dbConnect(MySQL(), user = db_user, password = db_password,
                   dbname = db_name, host = db_host, port = db_port)
s <- paste0("select * from ", db_table)
rs <- dbSendQuery(mydb, s)
df <-  fetch(rs, n = -1)

on.exit(dbDisconnect(mydb))



range(df[5])
summary.default(df)
max(df[5])
which(df[5]==max(df[5]))




