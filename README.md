# WUKS_project
This project was made to help Kosen Students to transfer into Universities and get better carrer.


## Installation for Bash on Windows
### Install bash
1. Click `Microsoft Store` from start menu, and search `Ubuntu` at search box.

1. Click `Ubuntu`, and install.

1. After installation Ubuntu, start `Ubuntu` and set up User name and Password.

1. Change repository.
   
   ```
   $ sudo sed -i -e 's%http://.*.ubuntu.com%http://ftp.jaist.ac.jp/pub/Linux%g' /etc/apt/sources.list
   ```
1. Update package.

   ```
   $ sudo apt update
   $ sudo apt upgrade
   ```

1. Install git.

   ```
   $ sudo apt install git
   ```
   

### Install rbenv/ruby-build
1. Type below command.
   
   ```
   $ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
   $ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
   :
   :
   $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
   $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
   ```
   
1. After reload shell, confirm whether rbenv is sure.

   ```
   $ source ~/.bashrc
   $ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
   Checking for `rbenv' in PATH: /home/yuitoku/.rbenv/bin/rbenv
   Checking for rbenv shims in PATH: OK
   Checking `rbenv install' support: /home/yuitoku/.rbenv/plugins/ruby-build/bin/rbenv-install (ruby-build 20171226-3-g01e7b7b)
   Counting installed Ruby versions: none
     There aren't any Ruby versions installed under `/home/yuitoku/.rbenv/versions'.
     You can install Ruby versions like so: rbenv install 2.2.4
   Checking RubyGems settings: OK
   Auditing installed plugins: OK
   ```

### Install Ruby( = 2.5.0)
 1.  Type below command.
     ```
     $ rbenv install --list
     Available versions:
       1.8.5-p52
       1.8.5-p113
     ~~~
       2.5.0
       2.6.0-dev

     $ rbenv install 2.5.0
     Downloading ruby-2.5.0.tar.bz2...
     -> https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.0.tar.bz2
     Installing ruby-2.5.0...
     Installed ruby-2.5.0 to /home/yuitoku/.rbenv/versions/2.5.0
     ```
 1. Confirm the comletion of the installation, and set Ruby in rbenv
    ```
    $ rbenv versions
    * system (set by /home/yuitoku/.rbenv/version)
      2.5.0

    $ rbenv global 2.5.0
    $ ruby --version
    ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-linux]
    ```
    
### Install Ruby on Rails
1. To install and start Rails, install some packages.
   ```
   $ sudo apt-get install libsqlite3-dev nodejs
   ```
   
1. Install Rails.
   ```
   $ gem install rails
   $ rails --version
   Rails 5.1.5
   ```
### Clone wuks_project
   ```
   $ git clone https://github.com/quventurets/WUKS ./wuks_project
   ```

### Activate React and Start wuks_project
  ```
  $ cd wuks_project
  
  $ npm install
  $ sudo npm install -g webpack
  $ npm run build
  
  $ rails server
  => Booting Puma
  => Rails 5.1.5 application starting in development 
  => Run `rails server -h` for more startup options
  Puma starting in single mode...
  * Version 3.11.2 (ruby 2.5.0-p0), codename: Love Song
  * Min threads: 5, max threads: 5
  * Environment: development
  * Listening on tcp://0.0.0.0:3000
  Use Ctrl-C to stop
  ```
  And access `http://localhost:3000`.
