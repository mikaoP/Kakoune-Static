# Kakoune static

This is Dockerfile uses Alpine Linux to build a static version of [kakoune](https://github.com/mawww/kakoune)

In order to use it you should run
```
docker build -t kak .
```

to build the image which will download the required packages and clone the repository.
You can launch kakoune running

```
docker run -it kak kakoune/src/kak
```
