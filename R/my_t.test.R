#' t-test function
#'
#' This function performs t-tests.
#'
#' @param x Numeric vector of data.
#' @param alternative String that specifies the alternative hypothesis and accepts
#'  "two.sided", "less", or "greater".
#' @param mu Numeric value that specifices the null hypothesis.
#'
#' @keywords inference
#'
#' @return List that includes a numeric test statistic, the degrees of freedom,
#'   the alternative hypothesis parameter, and the numeric p-value.
#'
#' @examples
#' my_t.test(x = rnorm(50, 0, 1), alternative = "less", mu = 0.3)
#' my_t.test(x = mtcars$wt, alternative = "greater", mu = 3)
#'
#' @export
my_t.test <- function(x, alternative, mu) {

  # sample size
  my_sample <- length(x)

  # degrees of freedom
  my_df <- my_sample - 1

  # mean
  my_mean <- mean(x)

  # standard deviation in one sample t-test
  my_sd <- (stats::sd(x) / sqrt(my_sample))

  # calculate test statistic
  test_stat <- ((my_mean - mu) / my_sd)

  # create list that includes the test statistic, degrees of freedom, string specifying
  # the alternative hypothesis, and intizializes a spot where the p-value will go
  my_list <- list(test_stat, my_df, alternative, 0)

  # name the list items
  names(my_list) <- c("test_stat", "df", "alternative", "p_val")

  # calculation if the alternative is two.sided
  if (alternative == "two.sided") {

    # calculate p value
    p_val <- (2 * stats::pt(abs(test_stat), df = my_df, lower.tail = FALSE))

    # add p value to the output list
    my_list[4] <- p_val

    # calculation if the alternative is "less"
  } else if (alternative == "less") {

    # calculate the p-value
    p_val <- stats::pt(test_stat, df = my_df, lower.tail = TRUE)

    # add p value to the output list
    my_list[4] <- p_val

    # calculation if alternative is "greater"
  } else if (alternative == "greater") {

    # calculate the p-value
    p_val <- stats::pt(test_stat, df = my_df, lower.tail = FALSE)

    # add p value to the output list
    my_list[4] <- p_val

    # throw error if alternative parameter is not "two.sided", "less", or "greater"
  } else {

    # stop program and throw error
    stop("Error: please specify the alternative hypothesis. Your options include: two.sided, less, or greater")
  }

  # return the list
  return(my_list)

}
