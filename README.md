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
- http://localhost:8081/
- http://localhost:8082/

### Services behind gateway
- http://localhost:80/example-basic/
- http://localhost:80/example-basic/status

### OAUTH questions
...see `test/http/example_auth.http`
