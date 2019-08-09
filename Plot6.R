## Plot 6
## better use the line chart showing the changes
subpm <- subset(pmemi, fips == "24510" | fips == "06037")
motor <- grep("motor", sou$Short.Name, ignore.case = T)
motor <- subset(sou, Short.Name = motor)
motorf <- subset(subpm, SCC %in% motor$SCC)
png("plot6.png", height = 480, width = 480)
library(ggplot2)
G <- ggplot(motorf, aes(year, Emissions, color = fips)) + geom_line(stat = "summary") + labs(title= "Motor Viechcle PM 2.5 emmision in Baltimore and Los Angeles") + ylab("Mean Emissions (ton) ") + scale_colour_discrete(name = "County", label = c("Los Angeles","Baltimore"))
print(G)
dev.off()
