[![Build Status](https://travis-ci.org/sul-dlss/modsulator-app-rails.svg?branch=master)](https://travis-ci.org/sul-dlss/modsulator-app-rails)
[![Coverage Status](https://coveralls.io/repos/sul-dlss/modsulator-app-rails/badge.svg)](https://coveralls.io/r/sul-dlss/modsulator-app-rails)
[![GitHub version](https://badge.fury.io/gh/sul-dlss%2Fmodsulator-app-rails.svg)](https://badge.fury.io/gh/sul-dlss%2Fmodsulator-app-rails)

# modsulator-app-rails

This includes the `modsulator` CLI utility which is distributed as a Ruby gem.

It also has a Rails API that exposes this functionality as a web service. This API is used by Argo for spreadsheet bulk upload.


Provides the following endpoints:

```
GET  /v1/spreadsheet
POST /v1/modsulator
POST /v1/normalizer
```


## Installing

```shell
git checkout https://github.com/sul-dlss/modsulator-app-rails.git
cd modsulator-rails-app
bundle install
```

## Command line tool

You can transform a spreadsheet using the command line tool by doing:
```shell
./bin/modsulator spec/fixtures/M1463_AV_manifest.xlsx > output.xml
```
