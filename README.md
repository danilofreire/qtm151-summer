# QTM 151 - Introduction to Statistical Computing

This branch hosts the website for the course [QTM 151 - Introduction to
Statistical Computing](http://danilofreire.github.io/qtm151) at [Emory
University](http://www.emory.edu). The course provides an introduction to
Python and SQL for data management and analysis. Please refer to the `main`
branch of [this repository](https://github.com/danilofreire/qtm151) for the
course materials.

## Building the website

I used [Quarto](https://quarto.org) to build the website, and the process was
quite straightforward. To keep the website organised, I created a `gh-pages`
branch and removed all unnecessary files. Then, I converted some of the course
materials, such as the syllabus, to `.qmd` format (Quarto Markdown) and added
them to their respective folders. The tutorials were already in `.qmd` format,
so I simply moved them to the `tutorials` folder and added a `tutorials.qmd`
file to list them. Similarly, the lectures are described in the `lectures.qmd`
file.

I decided to keep the Jupyter Notebooks, which will be used in the lectures,
only in the `main` branch. This way, I encourage students to download the
repository and follow the lectures using their local Jupyter environment.

The `_quarto.yml` file contains the configuration for the website, including
the theme, the title, and the navigation bar. The website files are in the
`docs/` folder, as it is one of the easiest ways to host a website on GitHub. I
also added a `.nojekyll` file to the root of the repository to prevent GitHub
from processing the website as a Jekyll project.

I then built the website with `quarto render docs/` and pushed the changes to the
`gh-pages` branch with `git push origin gh-pages`.

For further information on how to build a website with Quarto, please refer to
<https://quarto.org/docs/websites/>.

## Jupyter Lite

Creating a Jupyter Lite environment for students to run notebooks without local
installation proved slightly more challenging. Following the [Jupyter Lite
documentation](https://jupyterlite.readthedocs.io/en/latest/), I made several
adjustments to ensure functionality. Much of it was trial and error, as the
documentation is still in development.

I began by creating a `jupyter/` folder within the existing `docs/` directory,
as I had built the website in the latter. Next, I modified the
`requirements.txt` file to include all packages used in the notebooks and
installed them using `pip install -r requirements.txt`. I also created a file
named `overrides.json` with specific configurations.

After that, I executed `jupyter lite build` to generate the Jupyter Lite
environment. I then transferred the contents of the `_output/` folder to the
`jupyter/` folder. To finalise the process, I pushed all changes to the
`gh-pages` branch using `git push origin gh-pages`.

## Contributing

If you have any questions, please feel free to [open an
issue](https://github.com/danilofreire/qtm151/issues) or [create a pull
request](https://github.com/danilofreire/qtm151/pulls).

## License

The content of this repository is released under the [MIT
License](LICENSE.qmd). You are free to use, modify or distribute it as long as
you provide the attribution to the original author.
