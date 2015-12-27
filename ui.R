library(shiny) 
shinyUI(
        pageWithSidebar(
                # Adding a Header to the page
                headerPanel("Do I have fever?"),
                
                sidebarPanel(
                        radioButtons("method", "Where in your body did you measure temperature?", c("Measured in the bottom (rectally)" = "rectally",
                                                                           "Measured in the mouth (orally)" = "orally",
                                                                           "Measured under the arm (axillary)" = "axillary")),
                        sliderInput('temperature', 'Enter Temperature', min=35, max=42, value=36.5,step=0.1),
                        submitButton('Submit')
                ), 
                mainPanel(
                        p('Fever is the temporary increase in the body temperature in response to a disease or illness.'),
                        p('A child has a fever when the temperature is at or above one of these levels::'),
                        tags$div(
                                tags$ul(
                                        tags$li('100.4°F (38°C) measured in the bottom (rectally)'),
                                        tags$li('99.5°F (37.5°C) measured in the mouth (orally)'),
                                        tags$li('99°F (37.2°C) measured under the arm (axillary)')
                                )
                        ),
                        p('An adult probably has a fever when the temperature is above 99 - 99.5°F (37.2 - 37.5°C), depending on the time of day.'),
                        p('Reference: U.S. National Library of Medicine - https://www.nlm.nih.gov/medlineplus/ency/article/003090.htm'),
                        h4('Considering the value informed and where you measured it'),
                        p('You have:'),strong(verbatimTextOutput("Result"))
                )     
        )
)

