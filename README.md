# Minimalist PHP environnement for testing

## Build & run container

```bash
$ docker build --build-arg PHP_VERSION=8.0 -t yourimage:tag .
$ docker run --rm -it -v "${PWD}/code":/home -w /home -u $(id -u):$(id -g) yourimage:tag bash
```

*You can use different php version by changing value of PHP_VERSION.*

## Test & code

- Write your unit test in code/tests/unit directory
- Write your code in src/directory
- Run unit test with `composer run test`

