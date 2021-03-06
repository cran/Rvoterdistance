\name{dist_mile}
\alias{dist_mile}
\title{Calculates nearest drop box or polling location, in miles}
\description{Given a set of lat-long coordinates for each voter, and a set of coordinates for all drop boxes or polling locations; OR a vector of haversine distances from nearest_dbox(), calculates the nearest drop box or polling location for each voter in miles.}
\usage{
dist_mile(lat1d_vec, lon1d_vec, lat2d_vec, lon2d_vec, num_vec=NULL, vec_only=FALSE)
}
\arguments{
  \item{lat1d_vec}{Numeric vector, latitude coordinate of voter}

  \item{lon1d_vec}{Numeric vector, longitude coordinate of voter}

  \item{lat2d_vec}{Numeric vector, latitude coordinate of drop box, polling location}

  \item{lon2d_vec}{Numeric vector, longitude coordinate of drop box, polling location}
  \item{num_vec}{Numeric vector, haversine output, default is NULL however.}
  \item{vec_only}{Logical, default is FALSE, set to TRUE if putting in Haversine output already calculated from nearest_dbox()}

}
\value{
A numeric vector of minimum distances for each voter to their nearest drop box or polling location, in miles
}
\references{
Haversine: CC Robusto, 1957
}
\author{
Loren Collingwood <loren.collingwood@ucr.edu>
}
\seealso{dist_km, nearest_dbox}
\examples{

data(meck_ev)
# Voter and early vote location, Mecklenburg County
hav_meck <- nearest_dbox (voter_meck$lat, voter_meck$long,
				early_meck$lat, early_meck$long)
summary(hav_meck)
hav_mile <- dist_mile(num_vec=hav_meck, vec_only=TRUE)
head(hav_mile)

# Calculate mile distance directly
have_mile2 <- dist_mile (voter_meck$lat, voter_meck$long,
				early_meck$lat, early_meck$long)
head(have_mile2)

}