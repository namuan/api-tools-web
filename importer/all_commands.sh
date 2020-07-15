#!/usr/bin/env bash
# This file will capture all the commands executed during the process of importing data
# So that it can be re-run if needed

rm api_tools_web.db

echo '
* [Firecamp](https://firecamp.io) – Protocol agnostic API testing client which help you test and manage RestAPIs, GraphQL, Websocket and many more.
* [httpie](https://github.com/jkbrzt/httpie) – Command line HTTP client, far more dev-friendly than `curl`.
* [HttpMaster](http://www.httpmaster.net) – GUI tool for testing REST APIs and services. Windows OS only.
* [jq](https://github.com/stedolan/jq) – Command line JSON processor, to use in combination with a command-line HTTP client like cURL.
* [Insomina](https://insomnia.rest/) – A Fancy HTTP REST Client.
* [resty](https://github.com/micha/resty) – Little command line REST client that you can use in pipelines (bash or zsh).
* [TestMace](https://testmace.com) – A modern powerful crossplatform tool for working with API and creating automated API tests.
' | ./venv/bin/python3 importer/listing_data_builder.py --category testing

echo '
* [Beeceptor](https://beeceptor.com) - Beeceptor helps intercepting API calls and mocking them selectively. Creates an endpoint for wrapping original API and routes requests.
* [FakeRest](https://github.com/marmelab/FakeRest) – Patch XMLHttpRequest to fake a REST API client-side.
* [JSON Placeholder](http://jsonplaceholder.typicode.com/) – Free online REST service that you can use whenever you need some fake data.
* [json-server](https://github.com/typicode/json-server) – Get a full fake REST API with zero coding in less than 30 seconds.
* [Mocky.io](http://www.mocky.io/) – Free online service to create fake HTTP responses.
* [Swagger API Mock](https://github.com/bulkismaslom/swagger-api-mock) – Mock RESTful API based on swagger schema
* [FakeQL](https://fakeql.com/) – Mainly focused on GraphQL, but can mock RESTful APIs, as well.
* [httpstat.us](https://httpstat.us) – A super simple service for generating different HTTP codes.
* [httpbin](https://httpbin.org) – httpbin(1): HTTP Request & Response Service.
* [badssl](https://badssl.com) – Testing clients against bad SSL configs.
' | ./venv/bin/python3 importer/listing_data_builder.py --category mocking