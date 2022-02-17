
- Clone this repo

```
git clone 
cd spring-data-xml
```

- Start Cassandra container

```
docker-compose up -d
```

- I like to have a cqlSH to know what is happening. In a new terminal

```
docker run --rm -it -e CQLSH_HOST=localhost --net=host nuvo/docker-cqlsh bash
cqlsh
describe keyspaces
```

- Now start application

```bash
mvn spring-boot:run
```

- Check your keyspaces again you have now 2 new keyspaces `ks1` and `ks2`

```bash
describe keyspaces
```

TADA

