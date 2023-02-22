python -m venv venv_linux
source ./venv_linux/bin/activate
pip install flytekit scikit-learn
curl -sL https://ctl.flyte.org/install | sudo bash -s -- -b /usr/local/bin
pip install -r requirements.txt
pyflyte run example.py training_workflow --hyperparameters '{"C": 0.1}'
flytectl demo start