# Arch Linux Rebuilderd Status

A simple status display with the number of reproducible packages for Arch
Linux. Uses rebuilderd's API to fetch the current status of reproducibility.

## Dependencies

* yarn (for building/development)
* caddy (for local development)
* node-sass
* browserify


## Development

```
./scripts/startdevelop.sh
```

## Deployment

Creating a distributable tarball can be done with:

```
make dist
```
