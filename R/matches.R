#' Format European Football data to standard format
#'
#'
#' @param data_engsoc `data frame` from {engsoccerdata}.
#' @param country `character` country name, one of Spain,  Italy, Germany, England, Holland
#'
#' @return dataframe, tibble with columns `country`,
#' `date`, `season`, `tier`, `home`, `visitor`,
#' `goals_home`, `goals_visitor`.
#'
#' @inheritParams dplyr::filter
#'
#' @export
#'
#' @examples
#' requireNamespace("engsoccerdata", quietly = TRUE)
#' uss_make_matches(engsoccerdata::england, "England")
#' uss_make_matches(engsoccerdata::italy, "Italy", season == 1929)
#'
uss_make_matches <- function(data_engsoc, country, ...) {
  # validate
  validate_data_frame(data_engsoc)
  validate_cols(data_engsoc, cols_engsoc())

  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      country = as.character(.env$country),
      tier = factor(.data$tier, levels = c("1", "2", "3", "4")),
      season = as.integer(.data$Season),
      date = as.Date(.data$Date),
      home = as.character(.data$home),
      visitor = as.character(.data$visitor),
      goals_home = as.integer(.data$hgoal),
      goals_visitor = as.integer(.data$vgoal)
    ) |>
    dplyr::filter(...)
  result
}
