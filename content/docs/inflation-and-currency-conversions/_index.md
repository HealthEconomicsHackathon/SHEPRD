Inflation and Currency Conversions
==================================

Introduction
------------

We often need to adjust costs into specific currencies and years.

When might I use this?
----------------------

If needing to convert to unit or output costs into US dollars, local
currency or international dollars using Gross Domestic Product values,
in present or historical values.

Inflation and cost data packages
================================

Package: wbstats
----------------

Programmatic Access to Data and Statistics from the World Bank API

### Maintained by

Jesse Piburn
<a href="mailto:piburnjo@ornl.gov" class="email">piburnjo@ornl.gov</a>

URLs
----

<a href="https://cran.r-project.org/web/packages/wbstats/wbstats.pdf" class="uri">https://cran.r-project.org/web/packages/wbstats/wbstats.pdf</a>
<a href="https://cran.r-project.org/web/packages/wbstats/vignettes/Using_the_wbstats_package.html" class="uri">https://cran.r-project.org/web/packages/wbstats/vignettes/Using_the_wbstats_package.html</a>

What does this package do?
--------------------------

The package contains downloadable data from the World Bank.

How do I input my data to it/what inputs does it take?
------------------------------------------------------

Not applicable

What outputs do I get?
----------------------

See
<a href="https://cran.r-project.org/web/packages/wbstats/vignettes/Using_the_wbstats_package.html" class="uri">https://cran.r-project.org/web/packages/wbstats/vignettes/Using_the_wbstats_package.html</a>

Sample code section
-------------------

    library(wbstats)

    ## Warning: package 'wbstats' was built under R version 3.6.2

    library(data.table)

    ## Warning: package 'data.table' was built under R version 3.6.3

    pop.data <- wb(indicator = "NY.GDP.DEFL.KD.ZG")
    pop.data <- as.data.table(pop.data)


    pop.data <- pop.data[country=="World"]  
    pop.data[ , date := as.numeric(date)]
    pop.data[ , index := value]
    pop.data[ , year := date]

    # adapted from - inflatbly package - https://github.com/HealthEconomicsHackathon/inflatably

    inflation_adjust_cost_custom <- function(from_year,
                                             to_year,
                                             from_cost,
                                             inflation_df) {

      if (from_year %% 1 != 0) stop("From date must be an integer valued whole year")
      if (to_year %% 1 != 0) stop("To date must be an integer valued whole year")
      if (from_cost < 0) stop("Cost must be non-negative")
      if(!from_year %in% inflation_df$year) stop("from year not in look-up table")
      if(!to_year %in% inflation_df$year) stop("to year not in look-up table")

      from_index <- inflation_df[inflation_df$year == from_year, "index"]
      to_index <- inflation_df[inflation_df$year == to_year, "index"]

      to_cost <- from_cost * (to_index/from_index)

      return(to_cost)
    }


    primary.cost <- data.table(mean_cost = c(100:120))


    for (i in 1:nrow(primary.cost)){
      primary.cost[i, mean_i := inflation_adjust_cost_custom(2010,2018,primary.cost$mean_cost[i], pop.data)]
    }
    print(primary.cost)

    ##     mean_cost   mean_i
    ##  1:       100 65.10135
    ##  2:       101 65.75236
    ##  3:       102 66.40338
    ##  4:       103 67.05439
    ##  5:       104 67.70540
    ##  6:       105 68.35642
    ##  7:       106 69.00743
    ##  8:       107 69.65844
    ##  9:       108 70.30946
    ## 10:       109 70.96047
    ## 11:       110 71.61148
    ## 12:       111 72.26250
    ## 13:       112 72.91351
    ## 14:       113 73.56452
    ## 15:       114 74.21554
    ## 16:       115 74.86655
    ## 17:       116 75.51756
    ## 18:       117 76.16858
    ## 19:       118 76.81959
    ## 20:       119 77.47060
    ## 21:       120 78.12162
    ##     mean_cost   mean_i

Other packages
--------------

‘Rilostat’ - bulk download of ilostat database. Useful for labour
statistics.
<a href="https://cran.r-project.org/web/packages/Rilostat/Rilostat.pdf" class="uri">https://cran.r-project.org/web/packages/Rilostat/Rilostat.pdf</a>

Other helpful resources
-----------------------

‘countrycode’- Convert Country Names and Country Codes into standardised
formats.
<a href="https://cran.r-project.org/web/packages/countrycode/countrycode.pdf" class="uri">https://cran.r-project.org/web/packages/countrycode/countrycode.pdf</a>
