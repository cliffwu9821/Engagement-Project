report.html: report.Rmd 
	Rscript code/

output/data_clean.rds: code/00_clean_data.R data/course_engagement.csv
	Rscript code/00_clean_data.R
	
output/both_tables.rds: code/01_make_table.R output/data_clean.rds
	Rscript code/01_make_table.R




.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f report/report.html
