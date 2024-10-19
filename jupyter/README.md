# Building Jupyter Lite Pages with Pyodide

I have created a simple JupyterLite page using Pyodide for this website. The
idea is that students can run Python code in the browser without needing to
install Python on their own machines. The page is available at
<https://danilofreire.github.io/qtm151/jupyter>. The code for the page is
available in the `jupyter` folder of this repository.

The main issue I had was that I use the `docs/` folder to build the Quarto
website, and every time I rebuild the whole website with `quarto render`, the
`jupyter` folder is deleted. But the commands below solve the issue by
rebuilding the JupyterLite page after the Quarto website is built:

```bash
quarto render 
mkdir -p docs/jupyter 
cp -r jupyter/* docs/jupyter
pip install -r docs/jupyter/requirements.txt
jupyter lite build docs/jupyter
cp -r docs/jupyter/_output/* docs/jupyter
```

Please run the command in the root folder of the repository. The first line
rebuilds the Quarto website, the second line creates the `docs/jupyter` folder,
the third line copies the files from the `jupyter` folder to the `docs/jupyter`
folder, the fourth line installs the Python packages required by the
JupyterLite page, the fifth line builds the JupyterLite page, and the last line
copies the output files to the `docs/jupyter` folder.

Then, the JupyterLite should be ready to be published on GitHub Pages. The
following commands will push the changes to the repository:

```bash
git add docs/jupyter
git commit -m "update JupyterLite page"
git push
```

If you have any questions, please let me know.
