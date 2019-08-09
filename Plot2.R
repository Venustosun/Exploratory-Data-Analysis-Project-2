## Plot 2
sub2 <- subset(pmemi, fips=="24510")
sm2 <- with(sub2, tapply(Emissions, year, sum, na.rm = T))
df2 <- data.frame(years = names(sm2), sum = sm2)
png("plot2.png", height = 480, width = 480)
plot2 <- barplot(df2[,2], names.arg = c("1999","2002","2005","2008"), xlab = "year", ylab = "PM2.5 Emissions (ton)", main =  "Baltimore PM2.5 Emmision", col = "wheat" )
dev.off()
