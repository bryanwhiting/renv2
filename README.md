# renv2
a lighter version of my r environment with just the essential packages.

# Docker image 
- Rocker project: https://rocker-project.org/images/versioned/rstudio.html
- Rocker Verse installed packages:
    - https://github.com/rocker-org/rocker-versioned2/blob/master/scripts/install_tidyverse.sh
    - https://github.com/rocker-org/rocker-versioned2/blob/master/scripts/install_verse.sh
```{bash}
cd ../renv2
docker build -t bryanwhiting/renv2:latest .

export DIR_CONFIGS=/Users/bryanwhiting/github/renv2/configs
docker run \
  -d \
  -v $HOME/data:/home/rstudio/data \
  -v $DIR_CONFIGS/rstudio:/home/rstudio/.config/rstudio \
  -v $DIR_CONFIGS/.bashrc:/home/rstudio/.bashrc:Z \
  -v $DIR_CONFIGS/.profile:/home/rstudio/.profile:Z \
  -v $DIR_CONFIGS/.zshrc:/root/.zshrc:Z \
  -v $DIR_CONFIGS/.p10k.zsh:/root/.p10k.zsh:Z \
  -v $DIR_CONFIGS/.zcompdump:/root/.zcompdump:Z \
  -p 80:8787 \
  -e DISABLE_AUTH=true \
  -e PASSWORD=mu \
  --name renv2 \
  bryanwhiting/renv2:latest

# add this to run as root by default. disabling to not have to worry about all the file permissions.  
-e ROOT=true \  
-u root \
```