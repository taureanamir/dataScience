# Creating the data frame:

Club <- c("Leicester", "Spurs", "Arsenal", "Man City", "Liverpool",
          "Man Utd", "Southampton", "Stoke", "Swansea", "West Ham",
          "Newcastle", "Crystal Palace", "West Brom", "Everton",
          "Hull", "Sunderland", "Aston Villa", "QPR", "Burnley",
          "Chelsea")

Played <- c(27, rep(28, 18), 27)

Points <- c(69, 62, 58, 52, 50, 49, 48, 41, 39, 40, 34, 29, 29, 27,
            26, 25, 24, 21, 21, 17)

leagueTable <- data.frame(Club, Played, Points)

shinyServer(
        function(input, output) {
                output$lTable <- renderDataTable(leagueTable, options=list(paging = FALSE, searching = FALSE))
                southampton <- reactive({
                        switch(input$southampton, "win" = 3, "draw" = 1, "loss" = 0)
                })
                hull <- reactive({
                        switch(input$hull, "win" = 3, "draw" = 1, "loss" = 0)
                })
                stoke <- reactive({
                        switch(input$stoke, "win" = 3, "draw" = 1, "loss" = 0)
                })
                qpr <- reactive({
                        switch(input$qpr, "win" = 3, "draw" = 1, "loss" = 0)
                })
                manutd <- reactive({
                        switch(input$manutd, "win" = 3, "draw" = 1, "loss" = 0)
                })
                chelsea <- reactive({
                        switch(input$chelsea, "win" = 3, "draw" = 1, "loss" = 0)
                })
                leicester <- reactive({
                        switch(input$leicester, "win" = 3, "draw" = 1, "loss" = 0)
                })
                crystalpalace <- reactive({
                        switch(input$crystalpalace, "win" = 3, "draw" = 1, "loss" = 0)
                })
                liverpool <- reactive({
                        switch(input$liverpool, "win" = 3, "draw" = 1, "loss" = 0)
                })
                westbrom <- reactive({
                        switch(input$westbrom, "win" = 3, "draw" = 1, "loss" = 0)
                })
                sunderland <- reactive({
                        switch(input$sunderland, "win" = 3, "draw" = 1, "loss" = 0)
                })
                output$totalPoints <- renderText({
                        paste("These results give Arsenal a total of ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland(), " points.")
                
                })
                output$manCityRequire <- renderText({
                        paste("To win the league, Man City would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 57, " points.")
                })
                output$chelseaRequire <- renderText({
                        paste("To win the league, chelsea would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 53, " points.")
                })
                output$manUtdRequire <- renderText({
                        paste("To win the league, Man Utd would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 52, " points.")
                })
                output$liverpoolRequire <- renderText({
                        paste("To win the league, Liverpool would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 50, " points.")
                })
                output$spursRequire <- renderText({
                        paste("To win the league, Spurs would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 49, " points.")
                })
                output$southamptonRequire <- renderText({
                        paste("To win the league, Southampton would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 48, " points.")
                })
                output$stokeRequire <- renderText({
                        paste("To win the league, Stoke would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 41, " points.")
                })
                output$swanseaRequire <- renderText({
                        paste("To win the league, Swansea would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 39, " points.")
                })
                output$westHamRequire <- renderText({
                        paste("To win the league, West Ham would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 38, " points.")
                })
                output$newcastleRequire <- renderText({
                        paste("To win the league, Newcastle would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 34, " points.")
                })
                output$crystalPalaceRequire <- renderText({
                        paste("To win the league, Crystal Palace would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 29, " points.")
                })
                output$westBromRequire <- renderText({
                        paste("To win the league, West Brom would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 29, " points.")
                })
                output$evertonRequire <- renderText({
                        paste("To win the league, Everton would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 27, " points.")
                })
                output$hullRequire <- renderText({
                        paste("To win the league, Hull would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 26, " points.")
                })
                output$sunderlandRequire <- renderText({
                        paste("To win the league, Sunderland would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 25, " points.")
                })
                output$astonVillaRequire <- renderText({
                        paste("To win the league, Aston Villa would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 24, " points.")
                })
                output$qprRequire <- renderText({
                        paste("To win the league, QPR would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 21, " points.")
                })
                output$burnleyRequire <- renderText({
                        paste("To win the league, Burnley would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 21, " points.")
                })
                output$leicesterRequire <- renderText({
                        paste("To win the league, Leicester would need ", 
                              63 + southampton() + hull() + stoke() + qpr() + manutd() + 
                                      chelsea() + leicester() + crystalpalace() + 
                                      liverpool() + westbrom() + sunderland() - 17, " points.")
                })
        }

)