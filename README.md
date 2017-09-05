Docker image for pDepend
========================

## Usage

To launch the pDepend into the container, run:

    docker run --rm --user $(id -u):$(id -g) --volume $(pwd):/data/www nicodocker91/pdepend <options> ${ROOT_FOLDER}

## Volumes

The only volume available to mount is `/data`.

The entrypoint is `/data/www`.

## Options

Run the following command to read all options available:

    docker run --rm nicodocker91/pdepend --help

