# ui.R

# ui.R

size = 450

shinyUI(fluidPage(
  # 1.
  titlePanel("MA plot explorer"),
  # 2.
  splitLayout(cellWidths=size,
              plotOutput("plotma", click="plotma_click", width=size, height=size),
              plotOutput("plotcounts", width=size, height=size)
  ),
  # 3.
  splitLayout(cellWidths=size,
              sliderInput("alpha", "Adjusted p-value treshold",
                          min=0, max=0.5, value=0.1, step=0.001, width=size)
  )
  #END
))
