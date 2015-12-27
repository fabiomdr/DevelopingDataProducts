library(shiny) 

result<-function(method,temperature){
        ifelse(method=="rectally"&temperature>38,"Fever",ifelse(method=="orally"&temperature>37.5,"Fever",ifelse(method=="axillary"&temperature>37.2,"Fever","No Fever")))
}

shinyServer(
        function(input, output) {
                output$Result <- renderPrint({result(input$method,input$temperature)})
        } 
)