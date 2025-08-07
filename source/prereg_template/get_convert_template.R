# download original template
template_url <- "https://raw.github.com/bsiepe/ADEMP-PreReg/main/ADEMP-PreReg.docx"
template_path <- "source/prereg_template/template_docx/template.docx"
download.file(
  url = template_url, 
  destfile = template_path,
  mode = "wb"
  )

# convert docx to rmd
protocolhelper::convert_docx_to_rmd(
  from = template_path,
  to = "source/prereg_template/template.Rmd",
  verbose = TRUE
)

# convert rmd to qmd
names_rmd <- fs::dir_ls(path = "source/prereg_template", glob = "*.Rmd")
names_qmd <- stringr::str_replace(
  string = names_rmd,
  pattern = "Rmd",
  replacement = "qmd"
  )
fs::file_move(
  path = names_rmd,
  new_path = names_qmd
  )

# render via R console
quarto::quarto_render("source/prereg_template/template.qmd", output_format = "pdf")

# render via terminal
# quarto render source/prereg_template/template.qmd --output-dir ../../output/prereg_template --to pdf