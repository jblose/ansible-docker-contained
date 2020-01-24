## Build
```bash
docker build -t ansible .
```

## Run
```bash
docker run -it ansible -v ~/.ssh:/home/ansible/.ssh -v .:/ansible-project bash 
```
