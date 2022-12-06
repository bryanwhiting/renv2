# https://www.r-bloggers.com/2022/07/how-to-set-up-quarto-with-docker-part-1-static-content/
FROM rocker/verse:latest

# RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/powerlevel10k

# instead of installing these here, install via renv package
# RUN R -e "install.packages('gt', dependencies=TRUE, repos='http://cran.rstudio.com/')"
# RUN installGithub.r path/repo

# TODO: get this working!
# github cli: https://github.com/cli/cli/blob/trunk/docs/install_linux.md
# RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
# RUN chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
# RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
# RUN sudo apt update
# RUN sudo apt install gh

EXPOSE 7960

CMD ["bash"]