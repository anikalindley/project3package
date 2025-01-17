#' Gapminder data.
#'
#' Excerpt of the Gapminder data on life expectancy, GDP per capita, and
#' population by country.
#' This data and documentation come from the \code{gapminder} package,
#' available as \code{\link[gapminder]{gapminder}}.
#'
#' @format The main data frame \code{gapminder} has 1704 rows and 6 variables:
#' \describe{
#'   \item{country}{factor with 142 levels}
#'   \item{continent}{factor with 5 levels}
#'   \item{year}{ranges from 1952 to 2007 in increments of 5 years}
#'   \item{lifeExp}{life expectancy at birth, in years}
#'   \item{pop}{population}
#'   \item{gdpPercap}{GDP per capita (US$, inflation-adjusted)}
#'   }
#'
#' The supplemental data frame \code{\link[gapminder]{gapminder_unfiltered}} was not
#' filtered on \code{year} or for complete data and has 3313 rows.
#'
#' @source \url{http://www.gapminder.org/data/}
#' @seealso \code{\link[gapminder]{country_colors}} for a nice color scheme for the countries
"my_gapminder"
