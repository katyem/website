getwd()
setwd("D:/R stuff/katyem.net/website") #My AIG files
blogdown::build_site()
blogdown::serve_site()

# Use the Addins dropdown above to create a new post.
blogdown::new_post(title = "first new post")
blogdown::stop_server()

getwd()
blogdown::hugo_version()
