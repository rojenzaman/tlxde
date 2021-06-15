### First generate self signed SSL certificate,

```bash
$ ./ssl.sh
```
### Then build and deploy the docker-compose stack.

```
$ docker-compose up -d
```

That's all. Check it: https://0.0.0.0:6081

Notice: The `./disk` folder is mounted to the `/home/telegram/Documents` 

### Default Values:

Please edit these in `docker-compose.yml` file.

```bash
USER=telegram
PASSWORD=telegram
HTTP_PASSWORD=telegram  
```
