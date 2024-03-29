# Team Hadochi
# 13-1-2017
# Main script of the exercise of lesson 5


# perform pre_processing
source('R/download&extract_data.R', echo = TRUE)
source('R/ndvi_change_pre_proc.R', echo = TRUE)
source('R/ndvi_change_proc.R', echo = TRUE)

# make ndvi layers for both stacks
ndviL2014 <- make_ndvi(LC8CloudFree, 5, 4)
ndvi1990 <- make_ndvi(LT5CloudFree, 4, 3)

# plot ndvi layers
plot(ndviL2014, ylab = 'Latitude N (Deg, Deg, Min, Min, Sec, Sec)', xlab = 'Longitude E (Deg, Deg, Min, Min, Sec, Sec)', main='NDVI 2014 around Wageningen')
plot(ndvi1990, ylab = 'Latitude N (Deg, Deg, Min, Min, Sec, Sec)', xlab = 'Longitude E (Deg, Deg, Min, Min, Sec, Sec)', main='NDVI 1990 around Wageningen')

# make ndvi difference layer
ndvi_difference <- make_ndvi_dif(ndviL2014, ndvi1990)

# plot ndvi difference
plot(ndvi_difference, ylab = 'Latitude N (Deg, Deg, Min, Min, Sec, Sec)', xlab = 'Longitude E (Deg, Deg, Min, Min, Sec, Sec)', main='NDVI difference between 2014 and 1990 around Wageningen')

