# Flask API Test

## ENV

### Pipenv

```sh
$ pip3 install pipenv --user
$ pipenv --python 3.7
$ pipenv install -r ./item_store/requirements.txt
```

### Docker

```sh
$ docker build -t "flask-api-test:Dockerfile" .
$ docker run -d flask-api-test:Dockerfile

# check
$ curl continer-ip:5000/items
```
