# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyBS)
library(shinyLP)
library(shinythemes)

# Define UI for application
shinyUI(

  # Include a fliudPage above the navbar to incorporate a icon in the header
  # Source: http://stackoverflow.com/a/24764483
  fluidPage(

    list(tags$head(HTML('<link rel="icon", href="logo.png",
                        type="image/png" />'))),
    div(style="padding: 1px 0px; width: '100%'",
        titlePanel(
          title="", windowTitle="Vallender Labs Homepage"
        )
    ),

    navbarPage(title=div(img(src="Rlogo.png"), "Vallender Labs"),
               inverse = F, # for diff color view
               theme = shinytheme("united"),

               tabPanel("Home", icon = icon("home"),

                        jumbotron("Welcome to Vallender-Labs homepage.", thumbnail_label(image = 'Macaque.png', label = '',
                                                                                         content = paste0("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspDr. Eric Vallenders lab
is located on the University of Mississippi Medical Center's campus in Jackson Mississippi.&nbsp&nbspAs one of the newest member labs in the Department of Psychiatry and Human
Behavior within the Division of Neurobiology and Behavior Research, Dr. Vallender's research plays a key role in linking the functional genetics of the human brain to behavior.
&nbsp&nbspBy studying the evolutionary relationships that genes have among different speicies, Vallender Labs helps add important genetic associations to the pharmacological studies
that take place in established labs within the Department of Psychiatry and Human Behavior.&nbsp&nbsp<br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
For more information about UMMC, The Department of Psychiatry and Human Behavior, The Division of Neurobiology and Behavior Research, and The Center for Psychiatric Neuroscience please follow the link below.
                                  "),
                                                                                         button_link = 'https://www.umc.edu/', button_label = 'UMMC'),
                                  button = FALSE
                                  ),
                         fluidRow(
                          column(6, panel_div(class_type = "primary", panel_title = "Directions",
                                              content = "How to use the app")),
                          column(6, panel_div("success", "Application Maintainers",
                                             "Email Me: <a href='mailto:jasmine.dumas@gmail.com?Subject=Shiny%20Help' target='_top'>Jasmine Dumas</a>"))
                        ),  # end of fluidRow
                        fluidRow(
                          column(6, panel_div("info", "App Status", "Include text with status, version and updates")),
                          column(6, panel_div("danger", "Security and License", "Copyright 2016")),

                          #### FAVICON TAGS SECTION ####
                          tags$head(tags$link(rel="shortcut icon", href="favicon.ico")),

                          #### JAVASCRIPT TAGS SECTION #### - ENABLE WHEN READY
                          #tags$head(tags$script(src='pl.js')),

                          bsModal("modalExample", "Instructional Video", "ummc", size = "large" ,
                                  p("Additional text and widgets can be added in these modal boxes. Video plays in chrome browser"),
                                  iframe(width = "560", height = "315", url_link = "https://www.youtube.com/embed/0fKg7e37bQE")

                                  )

                        )),
               tabPanel("About", icon = icon("cog"),
                        wells(content = "Imporant Info can go up here before a
                              user starts exploring the application and its features",
                              size = "default"),
                        h1("Hello Visitors!", align = "center"),
                        hr(),

                        list_group(c(list_item("Application Updates", badge_value = 27),
                                     list_item("User Updates", badge_value = 24)))


                        ),

               tabPanel("Applications", icon = icon("calendar"),

                        jumbotron("Hello shinyLP!", "Dock Several Applications on a page as a portal",
                                  button = FALSE),
                        hr(),
                        fluidRow(
                          column(4, thumbnail_label(image = 'Rlogo.png', label = 'App for the GPCR-Orthologs Project',
                                      content = 'The GPCR-App is an application created with R-shiny.  The application
                                      is a standalone data visualization tool for the GPCR-Orthlogs Project.',
                                      button_link = 'http://162.243.56.106/shiny/GPCR-App/', button_label = 'GPCR-App')
                                 ),
                          column(4, thumbnail_label(image = 'Rlogo.png', label = 'Application 2',
                                                    content = 'Havana brown cornish rex bombay but bombay,
                                                    but havana brown devonshire rex and devonshire rex.
                                                    Tomcat egyptian mau. Cornish rex sphynx sphynx yet
                                                    cougar and panther. Panther siberian. Lynx munchkin
                                                    american shorthair. Norwegian forest. ',
                                                    button_link = 'http://getbootstrap.com/', button_label = 'Genetic-Metrics')),
                          column(4, thumbnail_label(image = 'Rlogo.png', label = 'App for the Genetic Metrics Project',
                                                    content = 'The Genetics Metrics application is a R-shiny app created by the Oregon National
                                                    Primate Research Center.  It was created for individuals to host/visualize data locally.
                                                    We use this page purely as inspiration',
                                                    button_link = 'http://162.243.56.106/shiny/genetic-metrics/', button_label = 'Click me'))

                        )))

)) # end of shiny
