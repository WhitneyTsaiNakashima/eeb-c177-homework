# C177/234 Lecture 6
January 28, 2020

working in virtual machine

```python
ls -a
# see hidden files

# give user executable rights
chmod +x dir.sh
# dir.sh or other file
```

Add a scripts directory to path in Linux/ubuntu

```python
# open .profile file in home directory
nano .profile
# add this line to the end
export PATH="$PATH:$HOME/scripts"
export PATH="$PATH:$HOME/Developer/repos/eeb-c177-scripts"

# update session using source
source .profile
```

Add a scripts directory to path in Linux/ubuntu

```python
# open .bash_profile file in home directory
nano .bash_profile
# add this line to the end
export PATH="$PATH:$HOME/scripts"

# update session using source
source .bash_profile
```

```python
# add executable permissions
chmod +x dir.sh
# dir.sh or other file
```
