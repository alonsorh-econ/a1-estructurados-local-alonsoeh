dir.create("outputs/tables", recursive=TRUE, showWarnings=FALSE)
dir.create("outputs/figures", recursive=TRUE, showWarnings=FALSE)

df <- data.frame(year=c(2022,2023,2024), y=c(100,103,108))
arrow::write_parquet(df, "outputs/tables/indicator_clean.parquet")

png("outputs/figures/fig_indicator.png", width=1200, height=600, res=140)
plot(df$year, df$y, type="o", main="Prueba indicador", xlab="Año", ylab="Índice")
dev.off()

message("OK R → outputs/tables/indicator_clean.parquet & outputs/figures/fig_indicator.png")
