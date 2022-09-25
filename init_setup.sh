echo [$(date)]: "START"
export _VERSION_=3.8
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
echo [$(date)]: "installing the tensorflow in macos"
conda install -c apple tensorflow-deps -y
pip install tensorflow-macos
pip install tensorflow-metal
pip install -r requirements.txt
echo [$(date)]: "END"