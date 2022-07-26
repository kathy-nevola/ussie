test_that("uss_make_matches works", {
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")
  expect_true(tibble::is_tibble(italy))
  expect_named(italy,
               c("country", "tier", "season", "date",
                  "home", "visitor", "goals_home",
                  "goals_visitor"))
  expect_identical(unique(italy$country), "Italy")
  # if you find a bug, write a test
  expect_s3_class(italy$tier, "factor")
  expect_snapshot(dplyr::glimpse(italy))
  expect_identical(uss_make_matches(engsoccerdata::italy, "Italy", season == 1929), italy |> dplyr::filter(season ==1929))
})

