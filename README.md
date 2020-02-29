# ddns-do

[![Build Status](https://travis-ci.org/mcfedr/ddns-do.svg?branch=master)](https://travis-ci.org/mcfedr/ddns-do)
[![GitHub Release](https://img.shields.io/github/release/mcfedr/ddns-do.svg)]()

Simple dynamic DNS updater script using Digital Ocean Domains.

This is a fork of [ddns-route53](https://github.com/mthssdrbrg/ddns-route53) adjusted for DO.

## Requirements

* `bash`
* `doctl`
* `dig`

## Installation

```shell
curl -sLO https://github.com/mcfedr/ddns-do/raw/$VERSION/ddns-do
```

You need to configure doctl, as you normally would, either with `DIGITALOCEAN_ACCESS_TOKEN`
or `doctl auth login`.

## Usage

```shell
$ ddns-do --domain <DOMAIN> --record <RECORD>
```

> Note: long options on the form `--long-option=` are not supported.

The above command assumes that the necessary environment variables for `doctl`
are set, an A type record and a TTL of 300 seconds.

See `ddns-do --help` for more information about command line arguments.

It's possible to set a number of environment variables instead of using command
line arguments, though command line arguments take precedence over environment
variables.

* `DDNS_DO_TTL`: TTL for DNS record.
* `DDNS_DO_TYPE`: DNS record type.
* `DDNS_DO_DOMAIN`: DO Domain.
* `DDNS_DO_RECORD`: DO Domains record name.
* `DDNS_DO_SCRIPT`: path to script to execute on changes.
