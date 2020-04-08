# Brett W. - Data Science Engineer, Iron EagleX
# 8 April 2020
# goat_getter.R
# Displays a different goat pic each time.

# Required libraries.
require(jpeg)
require(curl)

# Tap that API.
curl_download(url = "https://placegoat.com/200/200",
              destfile = "~/goat.jpg")

# View goat image.
goat_jpeg <- readJPEG("~/goat.jpg", native=TRUE)
plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
rasterImage(goat_jpeg,0,0,1,1)
