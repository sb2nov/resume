A single-page, one-column resume template for software developers. It uses the base LaTeX packages and fonts to provide ease of use and installation when trying to update the resume. The different sections are clearly documented and custom commands are used to provide consistent formatting. The three main sections in the resume are education, experience, and projects.

### Motivation

I created this template because managing a resume on Google Docs was hard, and changing any formatting was too difficult since it had to be applied in multiple places.

Most currently available templates either focus on two columns, or are multiple pages long that didn't work well for career fairs or online applications.

### Quick Start

Get started quickly using the [Overleaf](https://www.overleaf.com/latex/templates/software-engineer-resume/gqxmqsvsbdjf) template.

### Build Using Docker

```sh
docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex sourabh_bajaj_resume.tex
```

### Preview

![Resume Screenshot](/resume_preview.png)

### License

Format is MIT, but all the data is owned by Sourabh Bajaj.
