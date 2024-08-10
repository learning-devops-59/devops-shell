dnf install nginx -y
cp proxy.conf /etc/nginx/default.d/expense.conf
systemctl enable nginx
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://expense-web-app.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
systemctl restart nginx
systemctl status nginx

echo "** Frontend installation is completed **"
completed