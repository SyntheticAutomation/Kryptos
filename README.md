# README

Kryptos is a dashboard for tracking cryptocurrencies.
![Kryptos](/display.png)
## Features
- A price is displayed next to each currency. This price uses dynamic, conditional formatting to display values below 1 cent and above 1 cent differently.
- The CoinGecko API call returns a significant amount of data but this is abstracted and very little is stored in the `Coin` PORO. The price and 7-day change come from this api.
- The Luxor API call returns the value for how many active miners are currently online. To respect the API Docs call limit of 100/min, constant refresh was not implemented.
- A user can enter how many coins of each currency they have, and the back-end will calculate how much it is worth in USD.
