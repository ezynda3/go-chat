# Go Chat

This is a simple chat web app written in Go

All dependencies are located in the vendor folder so Go 1.6+ is required.

### Normal Build

```
go build -o go-chat .
```
Run

```
./go-chat
```

### Building the Docker container

```
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o go-chat .
docker build -t ezynda3/go-chat .
```

Run

```
docker run --rm -p 8000:8000 ezynda3/go-chat
```

### Finally

Then point your browser to http://localhost:8000
