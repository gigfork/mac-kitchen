Mac Kitchen
===========
The "Mac Kitchen" is a chef kitchen that resembles a collection of
cookbooks for Mac OS X. Currently only version 10.8 is supported.

Getting Started
---------------
Mac Kitchen expects Xcode 4.4+, Xcode's command line tools, the
chef gem, and the librarian gem to be installed.

### Installing Xcode
You can install Xcode via the Mac App Store. After you are
done installing Xcode open it up and go to `Xcode -> Preferences`.
In the downloads section click on "Install" next to "Command Line Tools". 

### Installing Chef and Librarian
Next you need to install the chef and librarian gems:
```
sudo gem install chef librarian --no-rdoc --no-ri
```
Now you are ready to run the chef client on a fresh workstation.

Running Chef-Solo
-----------------
First you should clone this repository to a directory of your choice and
enter the directory in the Terminal application. 

Next install all external cookbooks using librarian:

```
librarian-chef install
```

Now you are almost ready to run chef solo. Before running chef solo you should 
copy the `nodes/example.json` to `YOUR_NAME.json` and edit it to your liking.

Once you are done editing your personal node-file you are ready to run
the chef client:

```
sudo chef-solo -c solo.rb -j nodes/YOUR_NAME.json
```

After the chef run has completed it's recommended to restart your system
to make sure that everything is in order and all changes have taken
effect.
