# Learning Janus API Gateway
https://github.com/motiv-labs/janus


## Kickstart
```shell
make build
make up
make start ## or make console and inside /app/janus start
```

## In browser:
### Services directly
- http://localhost:8089/
- http://localhost:8088/

### Services behind gateway
- http://localhost:8080/example-basic/
- http://localhost:8080/example-basic/status

### OAUTH questions
...see `test/http/example_auth.http`
