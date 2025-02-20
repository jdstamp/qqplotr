test_that("`material_colors()` works", {
  expect_equal(as.vector(material_colors("indigo", "lime")), c("#3F51B5", "#CDDC39"))
})

test_that("`scale_color_material()` works", {
  library(ggplot2)
  library(see)
  expect_s3_class(
    ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
      geom_boxplot() +
      theme_modern() +
      scale_fill_material_d(),
    "gg"
  )

  expect_s3_class(
    ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
      geom_violin() +
      theme_modern() +
      scale_fill_material_d(palette = "ice"),
    "gg"
  )

  expect_s3_class(
    ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Sepal.Length)) +
      geom_point() +
      theme_modern() +
      scale_color_material_c(palette = "rainbow"),
    "gg"
  )
})
