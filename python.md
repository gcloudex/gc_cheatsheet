# Python

# Create `virtualenv` and `virtualenvwrapper`

It's a good practice to use an isolated virtual environments for each Python 
projects that need packages with different versions. `virtualenv` is a tool 
to create isolated Python environments.

`virtualenvwrapper` is a set of extensions to virtualenv tool that include 
wrappers for creating and deleting virtual environments, managing development 
workflow, making it easier to work on more than one project at a time without 
introducing conflicts in their dependencies.

**Reference:** 
- https://docs.python-guide.org/dev/virtualenvs/
- https://virtualenvwrapper.readthedocs.io/en/latest/install.html

- Install
```
sudo pip3 install virtualenv virtualenvwrapper
virtualenv --version
```

- Next, set locations in `.bashrc` file; the folders for each virtual 
  environment will be stored in the `.virtualenvs` folder in the user's
  `$HOME` directory;
```
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
```

- Reload startup file
```
source ~/.bashrc
```

- Create a **new environment, `tfserving`,** for the project
```
mkvirtualenv tfserving -p python3
workon tfserving

cd <home_directory>/zCodes/docker_tfserving_objdetect
pip3 install -r requirements.txt
```

