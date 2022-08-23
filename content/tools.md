---
title: Tools
---

# Software Tools

This course will use R statistical analysis software. We will use several 
specialized Bayesian analysis packages written for R 

## Menu {#menu}

* [Installing tools](#installing "Tools to install on your computer")
  * [Installing {{< R_LOGO >}}](#installing-r "Installing R")
  * [Installing {{< RSTUDIO_LOGO >}}](#installing-rstudio "Installing RStudio")
  * [Installing R packages for Bayesian statistics](#installing-r-packages)
* [Optional tools](#optional-tools "Optional tools you may want to install")
  * [Installing the tinytex package](#installing-latex "Installing the tinytex package for making PDFs from RMarkdown")
  * [Installing git for software revision management](#installing-git "Installing Git for revision management")
* [Resources for learning more](#resources "Free online reading and videos about using R, RStudio, etc.")
  * [{{< R_LOGO >}} and {{< RSTUDIO_LOGO >}}](#r-resources "Learning more about R and RStudio")
  * [{{< GIT_LOGO >}} and {{% GITHUB %}} {{< GITHUB_LOGO >}}](#git-resources "Learning about using Git with R for software revision control")


## Installing Tools {#installing}

### Installing {{< R_LOGO >}} {#installing-r}

* Download R version 4.2.1 from [https://cran.rstudio.com/](https://cran.rstudio.com/)
  * **Windows:** 
    * Download and install the ["base distribution" of R 4.0.3](https://cran.rstudio.com/bin/windows/base/).
  * **MacOS:**
    * Download and install [R version 4.0.3](https://cran.rstudio.com/bin/macosx/)
  * **Linux:**
    * You should be able to install R from your Linux distribution's package manager:
      * `sudo apt-get install r-base r-base-dev` for Debian or Ubuntu
      * `sudo yum install R` or `sudo dnf install git` for Fedora, 
        Red Hat, and related distributions.
      * If you are using Ubuntu, there are 
        [advanced instructions](https://cran.rstudio.com/bin/linux/ubuntu/fullREADME.html) 
        for configuring the package management system to use the very latest 
        versions of R and its associated packages at 
        <https://cran.rstudio.com/bin/linux/ubuntu/fullREADME.html>.
        This is optional and the default version of R should be fine for this
        class, as long as it is version 4.2 or higher.
* If you have a version of R older than 4.2, you should update it to 4.2 or 
  higher.

### Installing {{< RSTUDIO_LOGO >}} {#installing-rstudio}

RStudio is a free editing and software development environment that makes it 
much easier to work with R. I strongly recommend that you install RStudio
for this course.

* Go to the download page for the free desktop edition of {{% RSTUDIO %}} at 
  [https://www.rstudio.com/products/rstudio/download/#download](https://www.rstudio.com/products/rstudio/download/#download "Download RStudio") and
  download the installer for your operating system. Windows, MacOS, 
  and the Debian, Ubuntu, Fedora, RedHat, and openSUSE editions of
  Linux are all supported.
  
  There are other versions of {{% RSTUDIO %}} (an expensive professional 
  edition and a server edition). 
  You want the **free desktop edition**.
  As of August 2022, the latest version is RStudio Desktop version 
  2022.07.1+554.
* Run the installer. 
* After the installer finishes running, run {{% RSTUDIO %}}.
  * When {{% RSTUDIO %}} starts up, the lower left part of the screen should have
    a window that displays the R version, saying something like this:
      
    ```
    R version 4.2.1 (2022-06-23) -- "Funny-Looking Kid"
    Copyright (C) 2022 The R Foundation for Statistical Computing
    Platform: x86_64-w64-mingw32/x64 (64-bit)

    R is free software and comes with ABSOLUTELY NO WARRANTY.
    You are welcome to redistribute it under certain conditions.
    Type 'license()' or 'licence()' for distribution details.

    R is a collaborative project with many contributors.
    Type 'contributors()' for more information and
    'citation()' on how to cite R or R packages in publications.

    Type 'demo()' for some demos, 'help()' for on-line help, or
    'help.start()' for an HTML browser interface to help.
    Type 'q()' to quit R.
    ```
    The details will be different depending on your operating system, but
    if you see something like this, {{% RSTUDIO %}} correctly found R on your 
    computer.
  * Configuring RStudio for additional optional software. There are a few other
    pieces of software that you may want to use this semester, but these
    are not required.
    
    If have installed the Git revision control system or the {{< LATEX_LOGO >}}
    typesetting software, you should configure RStudio to use them:
  * If will use Git for software revision control with R, you should 
    open the "Tools" menu, and click on the "Global Options" choice.
    * Go to the "Git/SVN" tab and click "enable version control interface 
      for {{% RSTUDIO %}} projects". 
      If {{% RSTUDIO %}} can find the git program on your computer, 
      it will appear in the "git executable" field. 
      If {{% RSTUDIO %}} can't find it, you can help it by browsing to the 
      git program.
  * If you have installed {{< LATEX_LOGO >}} on your computer, 
    click on the SWeave tab, and select "knitr" for weaving
    `.Rnw` files, and choose `pdfLaTeX` for typesetting {{< LATEX_LOGO >}} 
    files into PDF.
    
## R Packages: {#installing-r-packages}

After you have R and {{% RSTUDIO %}} installed, you will need to install
a number of software packges that extend R for Bayesian data analysis.

* RStan

  This is the trickiest package to install. I recommend that you follow the
  [detailed installation instructions](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started) 
  on the RStan web site. There are instructions for Mac, Windows, and Linux.
  
  Before you can install RStan, you will need to install a C++ compiler
  and related tools before you can use RStan.
  (Don't worry, you won't need to do any programming in C++.
  Stan writes the C++ code for you, based on your description of the statistical 
  problem.)
  Follow the instructions at the rstan web page for 
  [Mac](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Mac)
  or 
  [Windows](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Windows)
  or
  [Linux](https://github.com/stan-dev/rstan/wiki/Configuring-C-Toolchain-for-Linux)
  
  After you've done this, you can go to the 
  [main RStan installation instructions](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started)
  and continue from there.
  
  If you run into difficulty, let me know and I will help you.
  
* Other R packages

  This will be a lot easier. Open RStudio, go to the "Console" window in
  RStudio, and type
  ```
  install.packages(c("devtools", "tidyverse", "coda", "mvtnorm", "daggity"))
  remotes::install_github("rmcelreath/rethinking")
  ```
  Now you should be good to go.
  
## Optional Tools: {#optional-tools}
  
### Installing the tinytex package {#installing-latex}

**It is optional to install the `tinytex` package.** 
You will be able to do all the work for the labs without it, but if you do 
install it, it will give you the option to produce nicely formatted PDF 
output from your RMarkdown files (for lab reports, presentations, etc.).

The R `tinytex` package installs a sophisticated typesetting system 
called {{< LATEX >}} on your computer. RMarkdown uses this system to 
generate PDF output.

The `tinytex` package needs to download a lot of files from the internet, 
and it can take 10 minutes or more to do so, even on a fast connection.
So it's a good idea to wait until you can let your computer run for a while,
and until you're connected to a good fast internet connection, preferably
one that doesn't charge you for data.

To install `tinytex`, go to the {{% RSTUDIO %}} console, and
you type the following:
  
```
install.packages('tinytex')
tinytex::install_tinytex()
```

If you want to uninstall `tinytex` later, you can just type this
command at the {{% RSTUDIO %}} console:

```
tinytex::uninstall_tinytex()`
```

### Installing {{<GIT_LOGO>}} {#installing-git}

Git is software for managing revisions as you develop software. You will not
need it for this course, but it may be useful if you plan to develop complicated
scripts for data analysis in the future.

If you have a Mac or Linux you may already have git installed. Test it by 
opening up a terminal window and typing `which git`. If you get a response
like `/usr/bin/git` then it's installed. If there is no response, then you
need to install git.
  
* **Windows:**
  * Download and install git from [https://git-scm.com](https://git-scm.com)
    * Choose the default options for the installer.
  * Optionally, you might want to also install Tortoise Git, which integrates
    git into the Windows explorer, so you can execute git commands from the 
    context menu when you right-click on files or directories in the explorer.
    You can download Tortoise Git from [https://tortoisegit.org/](https://tortoisegit.org/)
* **MacOS:**
    * If git is not already installed on your computer, you can download and
      install it from [https://git-scm.com](https://git-scm.com)
* **Linux:**
    * If git is not already installed, you can install it from your 
      distribution's package manager:
      * `sudo apt-get install git` for Debian or Ubuntu
      * `sudo yum install git` or `sudo dnf install git` for Fedora, 
        Red Hat, and related distributions.

#### Introducing Youself to {{< GIT_LOGO >}} {#configuring-git}
              
**_Whatever operating system you're using,_** after you install git you will 
need to introduce yourself to git (you only need to do this once).
It is important for git to knows your name and email address so it can 
keep track of who is editing files when you are working collaboratively and
so it gives you credit for the files you have authored and edited.
  
1. Open a terminal prompt:
   * On Windows, open a "git bash" window (git will give you the option to 
     do this when it finishes installing) or you can do so from the Windows 
     Start menu, under "Git".
   * On MacOS or Linux, open a regular terminal window (on MacOS, you can
     use Finder to find the terminal application in the "applications" folder).
2. Type the following at the terminal prompt:

   ```
   git config --global user.name "Your Name"
   git config --global user.email your.name@vanderbilt.edu
   ```
     
   using your real name and email.
       
You only need to introduce yourself to git one time after you install it.
Then it will remember who you are every time you use it.

#### Getting an account on GitHUB {{< GITHUB_LOGO >}} {#github-account}

If you will be using Git, you may want to create a free account on the
GitHub website. This will allow you to use GitHub to store your work in 
the cloud, so you can get access it from other computers and have a backup
in case your computer dies.

* Go to [https://github.com](https://github.com "GitHub") and register for a 
  free account
* After you have set up your account, go to 
  [GitHub Education](https://education.github.com/students "GitHub Student Accounts") 
  and register your account for the free extras you can get as a student.

## Resources for Learning More {#resources}

### {{< R_LOGO >}} and {{< RSTUDIO_LOGO >}} Resources {#r-resources}

* Our principal resource will be the book, 
  _[R for Data Science](https://r4ds.had.co.nz/ "Read R for Data Science online")_. 
  You can buy
  a printed copy or use the 
  [free online edition](https://r4ds.had.co.nz/ "Read R for Data Science online"),
  which is identical to the latest printed edition.
* {{% RSTUDIO %}} also has very useful "Cheat Sheets" that you can access from the
  help menu. These are two-page PDF files that explain the basics of things
  you may want to do with R:
  * Manipulating tibbles and data frames with 
    [`dplyr`](https://github.com/rstudio/cheatsheets/raw/master/data-transformation.pdf "Cheatsheet on data transformation with dplyr")
  * Visualizing data (making graphs and charts) with 
    [`ggplot2`](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf "Cheatsheet on data visualization with ggplot2")
  * Reading data from files and organizing it into tidy tibbles using 
    [`readr` and `tidyr`](https://github.com/rstudio/cheatsheets/raw/master/data-import.pdf "Cheatsheet on importing and organizing data with readr and tidyr")
  * Manipulating lists and vectors with 
    [`purrr`](https://github.com/rstudio/cheatsheets/raw/master/purrr.pdf "Cheatsheet on manipulating lists and vectors with purrr")
  * Using 
    [RMarkdown](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf "Cheatsheet on the basics of RMarkdown")
  * There is also a cheatsheet for the 
    [{{% RSTUDIO %}} IDE](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf "Cheatsheet on working with RStudio") 
    (Integrated Development Environment), which explains how to do things with 
    {{% RSTUDIO %}}, with a list of keyboard shortcuts for many common tasks.
  * There are several additional cheatsheets that aren't listed on the 
    Help menu, but you can see them if you click on 
    "[Browse Cheatsheets...](https://www.rstudio.com/resources/cheatsheets/ "Browse cheat sheets for common R packages")"
    at the bottom of the Cheatsheet menu or visit 
    [https://www.rstudio.com/resources/cheatsheets/](https://www.rstudio.com/resources/cheatsheets/ "Get cheatsheets for common R packages")
* The {{< RSTUDIO_LOGO >}} team also has a large selection of free
    [video tutorials and webinars](https://resources.rstudio.com/webinars "Watch webinars and presentations about using R and RStudio")
    about using R and {{% RSTUDIO %}}. These range from 
    [basics of R and RStudio for beginners](https://resources.rstudio.com/wistia-rstudio-essentials-2/rstudioessentialsprogrammingpart1-2 "Video tutorials on the basics of using R and RStudio") 
    and 
    [simple introductions to the basics of data science with R](https://resources.rstudio.com/the-essentials-of-data-science/the-grammar-and-graphics-of-data-science-58-51 "Video tutorials on the basics of data science with R and RStudio")
    to very advanced topics about specialized topics.

### {{< GIT_LOGO >}} and GitHUB {{< GITHUB_LOGO >}} Resources {#git-resources}

* There is a lot of free documentation about git at the 
  [git-scm](https://git-scm.com "Download git for your computer") website, including a full 
  [Git reference manual](https://git-scm.com/docs "Read about git") and
  a free online book, 
  _[Pro Git](https://git-scm.com/book "Read the Pro Git book online")_
* Professor Jenny Bryan at the University of British
  Columbia, has written a lot of helpful tutorial material specifically about
  using git and {{% GITHUB %}} with R and {{% RSTUDIO %}} at 
  [Happy Git and {{% GITHUB %}} for the useR](http://happygitwithr.com/ "Learn about using Git and GitHub with R and RStudio").
  
  Professor Bryan has also posted a detailed 
  [video tutorial](https://resources.rstudio.com/wistia-rstudio-conf-2017/happy-git-and-gihub-for-the-user-tutorial-jenny-bryan "Watch the video tutorial on using Git and GitHub with R and RStudio")
  at the 
  [{{% RSTUDIO %}} Webinars and Videos page](https://resources.rstudio.com/webinars "Watch more webinars and presentations about using R and RStudio"). 
  This tutorial walks you through all the steps of setting up git with {{% RSTUDIO %}}
  and how to use it to keep track of your edits and revisions, and synchronize
  your work with {{% GITHUB %}} (this serves three functions: backing up your data to 
  the cloud, sharing your data with other people, and collaborating on writing
  code or documents with other people).
