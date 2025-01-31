[![CircleCI](https://circleci.com/gh/sul-dlss/modsulator-app-rails.svg?style=svg)](https://circleci.com/gh/sul-dlss/modsulator-app-rails)
[![codecov](https://codecov.io/github/sul-dlss/modsulator-app-rails/graph/badge.svg?token=PiAtNDF03e)](https://codecov.io/github/sul-dlss/modsulator-app-rails)
[![GitHub version](https://badge.fury.io/gh/sul-dlss%2Fmodsulator-app-rails.svg)](https://badge.fury.io/gh/sul-dlss%2Fmodsulator-app-rails)

# modsulator-app-rails

This includes the `modsulator` CLI utility.

It also has a Rails API that exposes this functionality as a web service. This API is used by Argo for spreadsheet bulk upload.

Users sometimes call this "replayable spreadsheets."

This app does no "writing" and no "saving" -- it just does the translation of spreadsheet to MODS.

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

## Information about usage for Techies

NOTE:  the below is an explanation of how it used to work, before migrating off Fedora; it is provided as information only.  Do not sue.

- Requires all objects to be under the same APO (or it gets ignored?? ... but this code is actually in Argo)
- users often use Excel spreadsheets for the update
- It overwrites;  there is no merging.
- This currently goes via MODS -- spreadsheet --> MODS --> cocina (via metadata legacy DSA endpoint).
