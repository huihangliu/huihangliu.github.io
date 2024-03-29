# huihangliu.github.io

My personal web

## Instructions

instructions for running:
1. clone repo into e.g. ```/my/dir/huihangliu.github.io```
2. install docker and docker-compose. (windows works well with wsl2.)
3. ```cd /my/dir/huihangliu.github.io```
4. ```docker-compose up```

or 
1. manually install ruby in WLS2
2. run the instruction in ```docker-compose.yml```. 

This will 
- build a docker image containing the required gemfiles and whatever for the blog 
- run it, so that it's accessible at ```localhost:4000``` from your browser
- this will attach /my/dir/huihangliu.github.io to /blog inside of the container, so that
changes you make are automatically reflected by the running service
- this is useful for blogging locally and testing out how your changes look

## YAML

*layout*: post; *title* is a string; *date*: yyyy-mm-dd; *categories* is a list sep by comma; *visible*: true or false. 

- if *visible* is false, then the post will not be listed in the home page, but it's still accessible by url. 

## VS Code

Add the following settings in the workspace to set the terminal as wsl
    {
        //Set terminal as wsl
        "terminal.integrated.shell.windows": "C:\\Windows\\System32\\bash.exe" // this is the defalut wsl distro
    }
Note that tmux in vs code looks bad, please set the default shell as *zsh*. 

## Remark

    - This code template, cloned from j-mark-hou.github.io, lacks support for mathjax. 
    
    - I modified part of the code in footer.html, which add some support for mathjax. It happily leads to consistency between Typora and Jekyll. 

    - Put math into double $. 
    
    - Run Jekyll in linux by ```bundle exec jekyll serve```. 
    - or run ```bundle exec jekyll serve --force_polling --livereload``` with a watcher auto reload the web page with 15%-20% increase of CPU usage. 

## mathjax

See the bottom of ```includes/head.html```. 

1. We use ```mathjax version 3```. 
2. Use single `$` for inline math. 
3. Add ```auto-numbering```: https://docs.mathjax.org/en/latest/input/tex/eqnumbers.html. 
4. Add user defined ```macro``` support. 

## Local preview

Now, I use vscode in windows to code and preview markdown files. 

VSCode uses katex to rander the tex math expressions. 
I define some macros for katex, which is the same with latex and mathjax. 
The macros are defined in local file ```KaTex_macroFile.json```. 
The ```\label``` and ```\eqref``` function is not perfect. But it could work with some bug. 

We could use ```align``` environment surrounded by ```$$``` for math display style.  
And single ```$``` for inline style. 
Use ```\label{A.1}``` and ```\eqref{A.1}``` for math cross-reference. 

Use ```[label](#section-label)``` to link a section. 

## Google-analysis

I removed the `if` lines for analysis in `head.html`. 