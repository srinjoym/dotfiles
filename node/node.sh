brew install nvm

nvm install 4.2.1
nvm use 4.2.1
nvm alias default 4.2.1

# Globally install with npm

packages=(
    eslint
    grunt
    gulp
    http-server
    nodemon
    vtop
)

npm install -g "${packages[@]}"
