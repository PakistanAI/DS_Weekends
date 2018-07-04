## Important

To make sure that you benefit from the all the cool stuff we have planned for everybody to learn and practice hands-on, please ensure that you bring your laptops with the following software and packages installed. This is to ensure that you can follow our mentors and don't need to waste precious time during the workshop in installation and setup.

- [R](https://cloud.r-project.org/)
- [Rstudio (optional, IDE for R)](https://www.rstudio.com/products/rstudio/download/)
- [python3](https://www.python.org/downloads/)
- [jupyter notebook](http://jupyter.org/)  

Also, you will need to have the following libraries installed:  
For R: tidyverse, devtools, openintro and statsr. For the first three libraries just type on the R console: `install.packages('package-name-in-quotes')`
e.g:  

```
> install.packages('tidyverse')
```

After installing the first three, i.e: tidyverse, devtools and openintro, to install statsr, type in the R console: 

```
> library(devtools)
> devtools::install_github("statswithr/statsr")
```

For python: 

If you have anaconda, then you'll already have most of the packages, but in that case, we recommend that you don't install R through anaconda. Studies have shown that (the already rare cases of) people who install R in anaconda, curse out of frustration at least twice as much as those who install R from cran. Not to mention nightmares. And some cases of destroyed keyboards. Not advisable. Especially if you own a mac. Who's gonna' pay for that? Instead, install R separately from the link provided above. 

In the rare case that you are a good person and a firm believer in sustainable use of storage and bandwidth to conserve the planet, and install python from the above link as well, type on the terminal (you'll have pip installed in that case):  

```
$ python -m pip install --user numpy scipy matplotlib ipython jupyter pandas
```

If you're a Windows user I don't wanna talk to you. Use Google. Search for "install numpy windows". Good luck. :disappointed: 

To install tensorflow, follow the instructions [here](https://www.tensorflow.org/install/)

Update: Boss says we need to cater to Windows users as well :disappointed:. So here's the command for Windows (type in command prompt. You can bring it up by searching for cmd):

```
pip install numpy scipy matplotlib ipython jupyter pandas
```

If you face any problem, we will have volunteers at the event who you can request assistance from (seriously? you're gonna' do that? In the age of Google? Khuda ko maano. There has to be a name for this special breed of lazy you gotta' be if you still need to ask anybody for assistance. Just Google it).

And seriously, set up everything before you come. There'll be around 80 people. You expect the WiFi to work? Lol!

