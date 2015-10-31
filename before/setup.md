---
layout: default
---

## Mac Setup

As soon as possible after receiving your Mac, run through the following steps.
If you've done a lot of your own configuration, some of these steps may have to
change.  If you run into ANY PROBLEMS, send me an e-mail at:

mason.matthews@theironyard.com

Again, we want to have all of these kinks worked out in advance, so PLEASE
e-mail if things don't work as described below.

* Install Atom
  * Download Atom from [the Atom website](https://atom.io/).
  * Install and run it.  If you're not familiar with Mac installations, [read more here](mac_installations.html).
  * Click on the "Atom" option in your menu bar (all the way in the upper-left of your screen) and choose "Install Shell Commands."

* Install Google Chrome
  * Download Chrome from [the Chrome download page](https://www.google.com/intl/en/chrome/browser/).
  * Install and run it.  This install will work a little differently from Atom, so if you get confused, [read more here](mac_installations.html).

* Install XCode Command Line Tools
  * Go to the [Apple Developer Downloads site](https://developer.apple.com/downloads/).
  * You will have to register.
  * If you are running Mavericks, look for "Command Line Tools (OS X 10.9) for Xcode - Xcode ..."
  * If you are running Yosemite, look for "Command Line Tools (OS X 10.10) for Xcode - Xcode ..."
  * Download it, run it, and follow all the prompts.

* Install Homebrew
  * Open up Terminal.  If you're not familiar with opening applications on your Mac, [read this page, especially the last section](mac_installations.html).
  * Run `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  * Run `brew doctor`

* Install rbenv & ruby-build
  * Open up Terminal (or if you've still got it open, keep using it).
  * `brew install ruby-build rbenv`
  * `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`

* Install ruby 2.2.2
  * Close and reopen Terminal.
  * `rbenv install 2.2.2`
  * Go and get some coffee. That last one will take a while.
  * `rbenv global 2.2.2`
  * Close and reopen Terminal.
  * Run `which ruby`. If you see a path starting with `/usr/bin/`, get a TA or instructor to help you.

<!-- * Install nodejs
  * In Terminal
  * `brew install nodejs` -->

* Install git
  * In Terminal
  * `brew install git`
  * `git config --global push.default simple`
  * `git config --global credential.helper osxkeychain`

* Install Heroku Toolbelt
  * Download the Toolbelt from [this page](https://toolbelt.heroku.com/).
  * Run it and follow the install steps.
  * Open Terminal and run `heroku login`.  Enter your Heroku credentials when asked.

<!-- * Create an SSH key (__do not__ give it a password when it asks for one)
  * `ssh-keygen`
  * Press enter at the first prompt to stick with the default file name.
  * Press enter at the second prompt to give it no password. -->

* Add the following applications to your Dock
  * Atom
  * Chrome
  * Terminal
