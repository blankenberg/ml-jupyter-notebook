#!/bin/bash

export PATH=/home/$NB_USER/.local/bin:$PATH

python /get_notebook.py

if [ ! -f /import/tensorflow_notebook.ipynb ]; then
    cp /home/$NB_USER/tensorflow_notebook.ipynb /import/tensorflow_notebook.ipynb
    chown $NB_USER /import/tensorflow_notebook.ipynb
fi

jupyter trust /import/tensorflow_notebook.ipynb

#jupyter notebook --port=8888 --allow-root --no-browser

#jupyter lab --allow-root --no-browser

jupyter notebook --no-browser

