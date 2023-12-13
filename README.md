# config

 Checklist when setting up a new environment:

1. Create new ssh key for this computer.
    1. Preferred way to create an sshkey is in `gen_key.sh`
    ```
    ssh-keygen -t ed25519 -a 100 -C "TrevorMassey@users.noreply.github.com"
    ```
1. Clone this repo somewhere sensible
1. cd into that repo
1. Set up bash run this from current dir:
    ```
    mv ~/.bashrc ~/.bashrc.bak
    ln -s ./.bashrc ~/.bashrc
    mv ~/.aliases ~/.aliases.bak
    ln -s ./.aliases ~/.aliases
    ```
