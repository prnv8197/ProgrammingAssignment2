ip <- as.data.frame(installed.packages())
head(ip)
ip <- ip[!(ip[,"Priority"] %in% c("base", "recommended")),]
path.lib <- unique(ip$LibPath)
pkgs.to.remove <- ip[,1]
head(pkgs.to.remove)
sapply(pkgs.to.remove, remove.packages, lib = path.lib)

