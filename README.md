Mapper
------

Example app to take HTTP POST as JSON from Geogram One, store in a database and show results.


## Interface

```
POST /pings/unique_token

{
    "dateTime": "",
    "latitude": "",
    "longitude": "",
    "speed": "",
    "course": "",
    "altitude": "",
    "hdop": "",
    "vdop": "",
    "pdop": "",
    "satellitesUsed": "",
    "GSAModeTwo": "",
    "batteryPercent": "",
    "batteryVoltage": "",
    "rssi": ""
}
```

## Setup

* Ruby 2.2.0
* Postgres
* Bundler
* Foreman

```
$ bin/rake db:{create,migrate}
$ foreman start
```
