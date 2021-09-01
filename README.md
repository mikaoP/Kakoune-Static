# Kakoune static

This Dockerfile uses Alpine Linux to build a static version of 

- [kakoune](https://github.com/mawww/kakoune)
- [ctags](https://github.com/universal-ctags/ctags)

In order to use it you should run
```
docker build -t kak .
```

to build the image which will download the required packages and clone the repository.
You can launch kakoune running

```
docker run -it kak kakoune/src/kak
```
