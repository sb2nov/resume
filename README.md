# Latex template CV

A latex template for CVs considering tips from [Create Your Resume for Google: Tips and Advice](https://www.youtube.com/watch?v=BYUy1yvjHxE) With dark theme too!


## Prerequisites

### Locally

**Docker:** 

* Linux: `curl -sSL https://get.docker.com/ | sh`

### Web

An [Overleaf](curl -sSL https://get.docker.com/ | sh) account.


## Getting started

### Locally (experimental)

* Clone repository locally `git clone https://github.com/wilmeragsgh/resume.git`
* Build the Dockerfile for compiling the Latex file `docker build -t latex .`
* Generate latex output for your `source.tex` file by: `docker run --rm -i -v "$PWD":/data latex pdflatex source.tex`

### Web (stable)

* Copy the text from [here](https://raw.githubusercontent.com/wilmeragsgh/resume/master/source.tex)
* Paste it on an [Overleaf project](https://www.overleaf.com/)
* Edit the entries of the code with your own data.
* Press the 'Download PDF' button.


A single-page, one-column resume for software developers (data scientist use case in my case). The different sections are clearly documented and custom commands are used to provide consistent formatting. The three main sections in the resume are education, experience, projects, certifications and personal publications.

### Motivation

I created this template as a way of improving my modification system with Version Control and to have a single source of truth when making changes on it. Also added a version of the pdf in dark theme, so it might be useful for the people reading to select which theme to see. And finally i tried to use simple tips and recommendations from Google to ensure some quality of the structure and sections.

### Preview

![Light theme](/light_preview.png)

![Dark theme](/dark_preview.png)

### License

Format is MIT but all the data is owned by Wilmer Gonzalez. 
