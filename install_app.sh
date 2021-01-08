#!/bin/sh

echo "Installing Node.js"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
node -e "console.log('Running Node.js ' + process.version)"

echo "Installing demo-nodejs with PM2"

npm install
npm start

echo "DONE"
echo "-- Don't forget to run 'npm run pm2startup' and then 'npm run pm2save'"

exec -l "$BASH"
