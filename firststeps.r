datapath <- "/mnt/data/aviso"
list.files(datapath)
library(raster)
u <- brick(file.path(datapath, "so_aviso_u.grd"))
v <-  brick(file.path(datapath, "so_aviso_v.grd"))
vlen <- function(u, v) sqrt(u * u + v * v)
i <- 1
vpal <- viridis::viridis
plot(vlen(u[[i]], v[[i]]), )
     