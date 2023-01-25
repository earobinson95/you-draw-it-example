# Load libraries
library(shiny)
library(shinyjs)
library(r2d3)
library(tidyverse)
library(purrr)
library(gridSVG)
library(lubridate)
library(readxl)
library(renv)


ui <- navbarPage(
  "Can 'You Draw It'?",
  
  tabPanel(
    title = "Example: Eye Fitting Straight Lines in the Modern Era",
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "css/d3.css")
    ),
    fluidRow(
      column(
        width = 12,
        helpText(h4("Use your mouse to fill in the trend in the yellow box region")),
        d3Output("shinydrawr", height = "500px"),
        br(),
        actionButton("eyefitting_reset", "Reset")
      )
    )
  )
)