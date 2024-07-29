# 03_Data_Engineering_Project
- Feven Surafel
- Elizabeth Dutton
- Nestor Gomez

## Project Overview
Sourcing data from kaggle and other datasets containing stock information for multiple companies. We will track stock price trend a merket capitlaization across the tenures of different CEOs.

## SQL vs NonSQL
We chose an SQL database for this project due to the shape of our data. Since our data was structured in columns and rows, we continued this structure through the entirety of the project. Specifically we used PGadmin to interface to facilitate queries with our PostGres database.

## Data Ethics
Our data was pulled from multiple sources onlinw with clear references included in our readme for further scrutinization. The data we pulled was readily available and open to the public. In fact as public companies, stock data, stock volume and leadership is all readily available for outside scrutiny. Despite pulling information from different sources, we ensured that inferences could be made that strayed into non-publci personally identifiable information. Our data was complete for the timeframes queried. We did not introduce any unintended bias by omitting data points from under-represented groups. The method by which we pulled our data, through a one time scrape for market capitilization and using publicly available databases for stock information ensured we did not run afoul of any terms of service.

## Bibliography

Stock Data

    - https://www.kaggle.com/datasets/aayushmishra1512/faang-complete-stock-data/data?select=Google.csv

CEO History Dataset

    - Apple	    https://www.megamac.com/blog/a-timeline-of-apple-ceos
    - Google	https://thecioleaders.com/web-stories/the-history-of-google-ceos/
    - Amazon	https://www.historyoasis.com/post/history-amazon-ceos
    - Netflix	https://www.historyoasis.com/post/netflix-ceo-history
    - Meta	    https://www.britannica.com/money/Mark-Zuckerberg

Market Capitalization Dataset

    - Apple     https://companiesmarketcap.com/apple/marketcap/
    - Google    https://companiesmarketcap.com/alphabet-google/marketcap/
    - Amason    https://companiesmarketcap.com/amazon/marketcap/
    - Netflix   https://companiesmarketcap.com/netflix/marketcap/
    - Meta      https://companiesmarketcap.com/meta-platforms/marketcap/
