curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
useradd roboshop
mkdir /app
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/cart.zip
npm install
cp cart.service /etc/systemd/system/cart.service
systemctl daemon-reload
systemctl enable cart
systemctl start cart