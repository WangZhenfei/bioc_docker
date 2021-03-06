# DO NOT EDIT 'install.R'; instead, edit 'install.R.in' and
# use 'rake' to generate 'install.R'.

url <- "http://bioconductor.org/packages/3.4/bioc"

if ("BiocInstaller" %in% rownames(installed.packages()))
	remove.packages("BiocInstaller")


install.packages("BiocInstaller", repos=url)

builtins <- c("Matrix", "KernSmooth", "mgcv")

for (builtin in builtins)
    if(!do.call(require, list(builtin)))
        BiocInstaller::biocLite(builtin)
