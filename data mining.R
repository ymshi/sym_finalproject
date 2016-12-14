library(devtools)
library(twitteR)

#twitter info
api_key <- 	"pP54QITNE3DyEVNs3aX5n4H5r"
api_secret <- "pkzIbZNdoDm5aeMeYdIU57KQcOq1fIQQRqscauxiAkmFNjy9Z2"
access_token <- "793887063124897792-46oWwoU3bU0u4JUPFtpvdi6R9dE2C2s"
access_token_secret <- "Ieon1lMIqsqqzg2oHzMoXFWFdlEUuh4GRBa2MUfAsUbuB"

setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

#get data
sb <- searchTwitter('starbucks',since='2013-01-01', n = 10000)
dd <- searchTwitter('dunkin donuts',since='2011-01-01', n = 10000)
sb.df<-twListToDF(sb)
dd.df<-twListToDF(dd)

#save as rds file
saveRDS(sb.df, file="starbucks.rds")
saveRDS(dd.df, file="dunkindonut.rds")

save(sb.df,dd.df,file="coffee.Rdata")
