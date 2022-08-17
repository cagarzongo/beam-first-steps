FROM jupyter/scipy-notebook

# must reset to user root to install more stuff
USER root
# apt-utils is missing and needed to avoid warning about skipping debconf
RUN apt-get update && apt-get --yes install apt-utils
# install whatever else you want on this line
RUN apt-get --yes install curl htop
# set the user back to original setting
USER $NB_UID

# RUN sudo apt install graphviz
RUN python3 -m venv /home/jovyan/beam_venv_dir
RUN /home/jovyan/beam_venv_dir/bin/pip install --upgrade pip setuptools wheel
RUN /home/jovyan/beam_venv_dir/bin/pip install jupyterlab
RUN /home/jovyan/beam_venv_dir/bin/pip install apache-beam["interactive"] apache-beam["gcp"]
RUN /home/jovyan/beam_venv_dir/bin/pip install ipykernel
RUN /home/jovyan/beam_venv_dir/bin/python -m ipykernel install --user --name beam_venv_kernel --display-name "Python3 (beam_venv)"
RUN /home/jovyan/beam_venv_dir/bin/pip install ipywidgets