pip3 install requests

git clone https://github.com/FurkanGozukara/SUPIR

cd SUPIR

python3 -m venv venv

source ./venv/bin/activate

pip3 install -r requirements.txt

echo "Installing requirements"

pip3 install torch==2.2.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --upgrade
pip3 install triton
pip3 install xformers==0.0.24
pip3 install bitsandbytes==0.43.0 --upgrade

python3 download_models.py

cd ..

python3 downloader.py

echo "Virtual environment made and installed properly"

read -p "Press [Enter] key to continue..."
