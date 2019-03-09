#! /bin/sh

#conda activate py3
conda install ipykernel            # install Python kernel (ipykernel) into the conda environment
python -m ipykernel install        # install python kernel into nteract's available kernel list
conda install -c conda-forge scikit-image

conda install python=3 plotly scikit-learn numpy scipy pydicom vtk scikit-image pillow gdcm pytest 
conda install python=3 tornado==4.5.3
conda install python=3 pydicom --channel conda-forge 
#conda deactivate

sudo apt-get install python-skimage
sudo apt-get install build-essential cython

