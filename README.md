# Axe dockerized

## Usage

```
docker run --rm kinoba/axe-dockerized bash -c 'axe --stdout https://recette.kinoba.fr --show-errors --chrome-options='no-sandbox,disable-setuid-sandbox,disable-dev-shm-usage' | jq ".[0].violations | length"'
```

### Available tools

For now this image is able to run:

- axe

## Contribute

```
docker build -t kinoba/axe-dockerized -f Containerfile .
```

## TODO

