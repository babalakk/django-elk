# django-elk

## Install

```console
$ docker-compose up
```

## Usage

### Start service

```console
$ docker start elk
```

### Stop service

```console
$ docker stop elk
```

### Delete data

```console
$ docker volume rm elk_elk-data
```

### Delete container

```console
$ docker container rm elk
```

## Setting

### Timezone

For timestamp incorrect issue:
- Kibana -> Management -> Advanced Settings -> Timezone for date formatting -> UTC
