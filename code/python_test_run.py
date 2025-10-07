from pathlib import Path
import pandas as pd
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parents[1]
OUT_TAB = ROOT / "outputs" / "tables"
OUT_FIG = ROOT / "outputs" / "figures"
OUT_TAB.mkdir(parents=True, exist_ok=True)
OUT_FIG.mkdir(parents=True, exist_ok=True)

df = pd.DataFrame({"year":[2022,2023,2024], "y":[100,103,108]})
df.to_parquet(OUT_TAB/"indicator_clean.parquet", index=False)

plt.figure(figsize=(6,4))
plt.plot(df["year"], df["y"], marker="o")
plt.title("Prueba indicador")
plt.xlabel("Año"); plt.ylabel("Índice")
plt.tight_layout()
plt.savefig(OUT_FIG/"fig_indicator.png", dpi=160)
print("OK Python → outputs/tables/indicator_clean.parquet & outputs/figures/fig_indicator.png")
