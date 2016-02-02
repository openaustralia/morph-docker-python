# morph-docker-python

## Updating the image

1. Login to the VPN
1. `ssh openc@morph1`
1. `cd ~/morph-docker-python`
1. `git pull --rebase`
1. `docker build --no-cache -t opencorporates/morph-python .`
