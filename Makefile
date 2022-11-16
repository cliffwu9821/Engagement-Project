report.html: data/course_engagement.csv code/00_clean_data.R code/01_make_table.R
	Rscript Code/render_report.R

clean_data: data/course_engagement.csv
	Rscript code/00_clean_data.R
	
table: code/01_make_table.R output/data_clean.rds
	Rscript code/01_make_table.R


install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f report/report.html
