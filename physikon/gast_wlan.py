import codecs
import shutil
import os
from pathlib import Path
import csv
import subprocess as sp
import tempfile
from argparse import ArgumentParser

parser = ArgumentParser()
parser.add_argument("inputfile", help="CSV File exportiert aus dem Serviceportal")
parser.add_argument("outputfile", help="PDF output")


header = r"""
\input{wifi_header.tex}

\begin{document}%
"""

footer = r"""
\end{document}%
"""


if __name__ == "__main__":
    args = parser.parse_args()
    with tempfile.TemporaryDirectory(prefix="wlan_gast_") as tmpdir:
        tmpdir = Path(tmpdir)

        path = tmpdir / "gastzugaenge.tex"
        with path.open("w") as f:
            f.write(header)

            with open(args.inputfile, encoding="utf-8-sig") as infile:
                reader = csv.DictReader(infile)
                for i, row in enumerate(reader):
                    f.write(r"\wifi{" + row["Benutzername"] + "}{" + row["Passwort"] + "}%\n")

                    if i % 2 == 1:
                        f.write("\\\\[-0.4mm]%\n")

            f.write(footer)

        env = os.environ.copy()
        env["TEXINPUTS"] = f"{os.getcwd()}:{os.getcwd()}/../logos:"
        sp.run([
            "lualatex", "--interaction=nonstopmode", "--halt-on-error", str(path)
        ], env=env, cwd=tmpdir)

        output = path.with_suffix(".pdf")
        print(args.outputfile)
        shutil.copyfile(output, args.outputfile)
