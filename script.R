library(RSelenium)
library(netstat)
library(rvest)
library(wdman)
library(tidyverse)


Driver<-rsDriver(browser="chrome",
                chromever = "latest",
                verbose = F,
                port = as.integer(4444))

driver<-Driver$client

driver$navigate("https://salaries.texastribune.org/search/?q=department+of+safety")

 data<- driver$findElement(using='id','pagination-table')

next_button <- driver$findElement(using = "xpath", value = "//a[@aria-label='Next Page']")
next_button$clickElement
data_table <-data$getPageSource
view(data_table())
page<-read_html(data_table %>% unlist())
 remdr$close()
 rD$server$stop
 
