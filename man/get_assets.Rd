% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alpaca4R.R
\name{get_assets}
\alias{get_assets}
\title{Get Assets function}
\usage{
get_assets(url, headers, ticker = NULL)
}
\arguments{
\item{url}{URL to your user live or paper API.}

\item{headers}{Header object containing your KeyID & SecretID to your user API. Use add_headers('APCA-API-KEY-ID' = value, 'APCA-API-SECRET-KEY' = value) from httr package.}

\item{ticker}{The stock's symbol as a string.}
}
\value{
"id Asset" ID as a string.

"asset_class" us_equity as a string.

"exchange" AMEX, ARCA, BATS, NYSE, NASDAQ or NYSEARCA as a string.

"symbol" Stock symbol as a string.

"status" active or inactive as a string.

"tradeable" Asset is tradable on Alpaca or not as a boolean.
}
\description{
The assets API serves as the master list of assets available for trade and data consumption from Alpaca. Assets are sorted by asset class, exchange and symbol. Some assets are only available for data consumption via Polygon, and are not tradable with Alpaca. These assets will be marked with the flag tradable=false.
}
\examples{
get_assets(url = url, headers = headers)
}
