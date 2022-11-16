# Code Description 


`00_clean_data`
- Clean the given data set make necessary adjustment to the variable names
- Saves the clean data as a `.rds` object in `output/` folder

`01_make_table` 
- Generate table for analyzing the top and bottom 5 viewed videos
- Saves the table as  `.rds` object in `output/` folder

`Makefile`
- Adding make command in cleaning the data and making the table
- Make command that would generate the final report

`config.yml`
- A config file that contains two parameters,Parameter1 represents the number of values user want to customize in accessing the top viewed videos, Parameter2 represents the number of values user want to customize in accessing the top viewed videos.

`renv.lock`
- It is a renv lockfile that keeps the records of the information of all the R-packages that are being used in this project. It helps create a project specific library. 