ping dal.ca
sudo apt upgrade
sudo apt update
sudo apt upgrade
sudo apt install openssh-server 
sudo ufw allow ssh
sudo apt update
sudo apt upgrade
sudo apt update
sudo apt install xfce4 xfce4-goodies
sudo apt install tigervnc-standalone-server
vncpasswd
nano ~/.vnc/xstartup
chmod u+x ~/.vnc/xstartup
vncserver
vncserver -list
vncserver -kill :1
vncserver -list
vncserver -localhost no
sudo apt update
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl     -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose     -o /etc/bash_completion.d/docker-compose
vncserver -localhost no
sudo apt install -y git vim curl python3.8-venv
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
sudo usermod -aG docker $USER
su - ${USER}
newgrp docker
sudo apt-get install open-vm-tools
sudo apt-get update
sudo apt-get upgrade
cd Desktop/
python3 --version
cd logger-lab
python3 -m venv logger-lab
cd logger-lab
source bin/activate
mkdir src && cd src
ls
ls ..
ls
docker -v
cd Desktop/
ls
mkdir docker-lab
cd docker-lab/
docker image ls
docker image search
docker search hello-world
docker run hello-world
docker image pull hello-world
docker image ls
ls
docker container ls -a
docker run hello-world
docker container ls -a
docker container ls 
docker run hello-world
docker container ls -a
docker search ubuntu
docker search alpine
docker run -it alpine
docker container ls
docker container ls -a
git
ls
git clone git clone -b v1 https://github.com/inwk6312course/dockerapp.git
git clone -b v1 https://github.com/inwk6312course/dockerapp.git
ls
cd dockerapp/
ls
cat Dockerfile 
docker build -t dockerapp:v1 .
docker image ls
docker run -d -p 5000:5000 4506236e9344
curl localhost:5000
curl http://localhost:5000
docker container ls
docker run -d -p 6000:5000 4506236e9344
curl http://localhost:6000
docker container ls
docker container stop 7e18989ecbbf ebb8cbaf2169
docker container ls
docker container ls -a
docker container rm $(docker container ls -a -q)
ls
ls Desktop/
cd Desktop/
python3 -m venv netmiko-lab
pip3 freeze
pip freeze
cd netmiko-lab
source bin/activate
pip freeze
pip3 freeze
pip3 install netmiko
pip3 install jinja2
pip3 install pyyaml
pip3 freeze
mkdir src && cd src
git clone https://github.com/networktocode/ntc-templates
ls
export NET_TEXTFSM=ntc-templates/ntc_templates/templates
ls
vim get_prompt.py
python3 get_prompt.py 
ls
cd Desktop/
ls
cd netmiko-lab/
ping 192.168.1.101
ping 192.168.1.102
ls
ssh student@192.168.1.101
ssh -l student -p 22 -oKexAlgorithms=+diffie-hellman-group14-sha1 192.168.1.101
python3 -m venv jupiter
ls
cd jupiter/
source bin/activate
pip3 install jupyter
pip3 freeze
jupyter notebook &
ls
cd ..
pip3 freeze
ls
cd src/
ls
python3 get_prompt.py 
pip3 freeze
pip3 install netmiko
pip3 install jinja2
pip3 install pyyaml
python3 get_prompt.py 
ping 192.168.1.101
vim get_prompt.py 
ping 192.168.1.101
python3 get_prompt.py 
vim get_prompt.py 
python3 get_prompt.py 
ls
cd ..
ls
cd jupiter/
ls
python3 retrieve_uptimes.py 
python3 get_interface_description.py 
python3 parsed_format.py
ls
sudo lsof -i -P -n | grep LISTEN
{ echo -n 'Ciphers ' ssh -Q cipher | tr '\n' ',' | sed -e 's/,$//'; echo echo -n 'MACs ' ssh -Q mac | tr '\n' ',' | sed -e 's/,$//'; echo echo -n 'HostKeyAlgorithms ' ssh -Q key | tr '\n' ',' | sed -e 's/,$//'; echo echo -n 'KexAlgorithms ' ssh -Q kex | tr '\n' ',' | sed -e 's/,$//'; echo } >> ~/.ssh/config
ssh -l student -p 22 -oKexAlgorithms=+diffie-hellman-group14-sha1 192.168.1.101
ssh -l student -p 22 -oKexAlgorithms=+diffie-hellman-group14-sha1 192.168.1.102
ssh -l student -p 22 -oKexAlgorithms=+diffie-hellman-group14-sha1 192.168.1.101
ssh -l student -p 22 -oKexAlgorithms=+diffie-hellman-group14-sha1 192.168.1.102
ssh student@192.168.1.101
ssh student@192.168.1.102
cd Desktop/
ls
cd netmiko-lab/
ls
source bin/activate
pip3 freeze
ls src
cd jupiter/
ls
python3 push_all_config.py 
python3 collect_routing_tables.py
cd Desktop/
ls
ls netmiko-lab
python3 -m venv restconf-lab
cd restconf-lab/
git clone https://github.com/inwk6312course/restconf-lab.git
ls
source bin/activate
pip3 freeze
ping 192.168.1.101
ls
cd restconf-lab/
ls
cd yang-models/
pyang -f tree ietf-interfaces.yang
pip3 install -r requirements.txt
ls
cd 
cd ..
ls
cd ~/Desktop/restconf-lab/
ls
cd restconf-lab/
ls
pip3 install -r requirements.txt
ls
cd yang-models/
pyang -f tree ietf-interfaces.yang
pyang -f tree ietf-routing.yang
pyang -f tree cisco-platform-software.yang
cd ..
ls
ls ../
mkdir tasks && cd tasks
pip3 freeze
pip3 install jupyter
pip3 freeze
jupyter notebook &
sudo lsof -i -P -n | grep LISTEN
kill 74957
kill 77646 77718 77734 84653
sudo lsof -i -P -n | grep LISTEN
ls
python3 get_interfaces.py 
python3 one_interface.py 
python3 set_interfaces.py 
ls
mkdir Nan01
cd Nan01/
git clone https://github.com/InternetworkingProgram/labfinal-nn547318.git
ls
cd labfinal-nn547318/
ls
git status
touch my_fav_commands.txt
vim my_fav_commands.txt 
git status
pwd
cd ..
ls
mkdir tempdir
ls
rm -rf tempdir/
ls
cd labfinal-nn547318/
git add .
git commit -m "Added my fav commands"
git config --global user.email "nn547318@dal.ca"
git commit -m "Added my fav commands"
git status
git push origin
cd ~
exit
