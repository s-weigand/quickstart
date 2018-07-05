[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/s-weigand/quickstart.git/master?urlpath=lab/tree/examples/fit_data_in_vivo_cyano_data.ipynb)

# quickstart
A repository with a example projects and bootstrap files.

## Vagrant

The repository contains a Vagrantfile which sets up a [Vagrant](https://www.vagrantup.com/) box with included Jupyter Lab.

After installing [Vagrant](https://www.vagrantup.com/) simply go to the
repository folder and issue

    vagrant up
    # OR

    vagrant up --provider virtualbox

Note: You will need [VirtualBox](https://www.virtualbox.org/) installed.

After running `vagrant up`, open a browser and browse to `localhost:9999` (`127.0.0.1:9999`) or simply doubleclick `open_vagrant-jupyter.html`.

To shut down the box, issue

    vagrant down / halt

To connect (via ssh) and aquire a terminal on the box issue:

    vagrant ssh

To delete it (and remove all traces from your computer)

    vagrant destroy

To update the glotaran-core installation on a vagrant box (without rebuilding it):

    vagrant ssh
    sudo -H  pip3 install -U --no-deps --force-reinstall --process-dependency-links git+https://github.com/glotaran/glotaran.git
    exit
    vagrant reload
