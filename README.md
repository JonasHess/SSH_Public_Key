
# Install SSH KEYS
```

curl -fsSL https://raw.githubusercontent.com/JonasHess/SSH_Public_Key/master/setup.sh -o installKeys.sh && sh installKeys.sh


sh sudo apt update 
sudo apt install git -y 
git clone https://github.com/JonasHess/SSH_Public_Key.git
cd SSH_Public_Key 
chmod +x ./*.sh 
./install_public_keys.sh 
./install_private_keys.sh 
git remote set-url origin git@github.com:JonasHess/SSH_Public_Key.git
```
