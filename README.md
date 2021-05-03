### python-youtube-dl

A useful simple git container running, especially for tiny Linux distro, such as RancherOS, which doesn't have a package manager.

[![DockerHub Badge](https://dockeri.co/image/dublado/python-youtube-dl)](https://hub.docker.com/r/dublado/python-youtube-dl)

### Github Repo

https://github.com/dublado/python-youtube-dl

### Docker image tags

https://hub.docker.com/r/dublado/python-youtube-dl/tags/


### usage

    docker run -ti --rm -v $(pwd)/videos:/videos dublado/python-youtube-dl <youtube-dl_command>

To save your type, add this fuction to `~/.bashrc` or `~/.profile`
    
    $ cat ~/.profile
    
    ...
    
    function youtube-dl () {
        (docker run -ti -v $(pwd)/videos:/videos dublado/youtube-dl "$@")
    }
    
    ...
    
    $ source ~/.profile

for example, if you need clone this repository, with the function you just set, you can run it as local command

    git clone https://github.com/dublado/python-youtube-dl.git

### Optional usage 2:

    alias git="docker run -ti --rm -v $(pwd)/videos:/videos dublado/youtube-dl"
