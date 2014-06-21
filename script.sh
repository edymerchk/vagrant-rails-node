

sudo apt-get -y update

# Essentials
sudo apt-get install -y build-essential zlib1g-dev curl git-core sqlite3 libsqlite3-dev python g++ make python-software-properties

# Node.js
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y  nodejs

#Posgrest
sudo apt-get install -y postgresql-9.1 libpq-dev


#Ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

export RBENV_ROOT="${HOME}/.rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"
export PATH="${RBENV_ROOT}/shims:${PATH}"
rbenv install 2.1.1
rbenv global 2.1.1
gem install bundler
rbenv rehash