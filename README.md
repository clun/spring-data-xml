

- Start Cassandra

```
docker-compose up -d
```


- I like to have a cqlSh to know what;s happening

```
docker run --rm -it -e CQLSH_HOST=localhost --net=host nuvo/docker-cqlsh bash
cqlsh
```

- Check your keyspaces

```bash
describe keyspaces
```

- Start Spring APP

```bash
mvn spring-boot:run
```

- Check your keyspaces again you have now 2 new keyspaces ks1 and ks2

```bash
describe keyspaces
```



