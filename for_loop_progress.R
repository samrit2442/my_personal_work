library(tidyverse)
library(tictoc)
library(beepr)

tic()
for(i in 1:500){
  Sys.sleep(0.01)
}
toc()
beep()
## 7.78 sec elapsed

for(i in 1:6){
  cat("The value of i is:", i)
  cat("\r")
  
  Sys.sleep(1)
}


for(i in 1:1000){
  Sys.sleep(0.01)
  
  if(i %in% seq(0,1000, by=100)){
    cat("The value of i is:", i , "\r")
  }
  
}



for(i in 1:6){
  cat("The value of i is", i , "and we are at" , floor(i*100/6) , "% \r")
  
  Sys.sleep(1)
}


my_progress_bar <- txtProgressBar(1,500, style = 3)

for(i in 1:500){
  setTxtProgressBar(my_progress_bar , i)
  Sys.sleep(0.01)
}


for(i in 1:10){
  
  if(i==1){start_time <- Sys.time()}
  else{
    elapsed_time <- Sys.time() - start_time
    # Note that the 10 here must match the number of steps 
    total_time <- elapsed_time*10/i
    remaining_time <- round(total_time-elapsed_time, digits=2)
    
    Sys.sleep(1.5)
    
    cat(paste("Remaining time:", remaining_time , "seconds"))
    cat("\r")
  }
  
}


for (i in 1:10) {
  cat("\rProgress:", i, "/ 10")  # Overwrites the line each iteration
  Sys.sleep(0.5)  # Pause to simulate a time-consuming task
}



for(i in 1:20){
  
  if(i==1){start_time <- Sys.time()}
  else{
    elapsed_time <- Sys.time() - start_time
    # Note that the 20 here must match the number of steps 
    total_time <- elapsed_time*20/i
    remaining_time <- round(total_time-elapsed_time, digits=2)
    finish_time <- Sys.time() + lubridate::seconds(remaining_time) 
    
    Sys.sleep(1.5)
    
    cat(paste("Current time is", format(Sys.time() , "%r") , 
              "and process will be finished at" , format(finish_time , "%r")))
    cat("\r")
  }
  
}



paste_collapse <- function(...){
  paste0(... ,collapse="")
}

for(i in 1:15){
  
  full_bar = cli::console_width()
  bar_partial <- floor(i*full_bar/15)
  space_width <- full_bar-bar_partial
  # Make the bar as a series of '#' followed by a series of spaces. 
  bar <- paste_collapse(paste_collapse(rep("=",bar_partial)) , paste_collapse(rep(" ",space_width)))
  # Add a vertical line to each end of the bar
  bar <- paste_collapse("|", bar, "|")
  
  # create your own message here. Don't make it too long!
  message <- paste0( round(i*100/15), "% complete")
  # pop a space on either side of the message.
  message <- paste0(" ", message , " ")
  # the message should be located at the midpoint of the bar
  where_to_put_message <- floor((full_bar - str_length(message))*0.5)
  # sub the message into the bar
  str_sub(bar , where_to_put_message , where_to_put_message + str_length(message) ) <- message
  
  Sys.sleep(0.4)
  
  cat(bar , "\r")
  rm(bar , full_bar , bar_partial, space_width, message)
}





