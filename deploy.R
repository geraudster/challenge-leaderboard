# install.packages('devtools')
library(devtools)
# Install et chargement des packages shinyapps et packrat
# devtools::install_github('rstudio/packrat')
# devtools::install_github('rstudio/shinyapps')

library(packrat)
library(shinyapps)
# Autorisation d'accès à l'API
# shinyapps::setAccountInfo(name='votre username shiny', 
                          # token='votre clé token', 
                          # secret='votre clé secrète')
# Déploiment
shinyapps::deployApp('.',
                     appFiles = c('ui.R', 'server.R', 'leaderboard.R', 'google_secret.json', 'ShazamLeaderboard-5a8728fa6ef0.json', 'submission-label.csv'),
                     appName = 'ShazamLeaderboard')
