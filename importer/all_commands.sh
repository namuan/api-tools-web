#!/usr/bin/env bash

export PYTHONPATH=`pwd`:$PYTHONPATH

# This file will capture all the commands executed during the process of importing data
# So that it can be re-run if needed

rm api_tools_web.db

# Use Cmd + J -> Note (Live Template)

echo '
* [Rest for Haskell](https://github.com/silkapp/rest) - This package allows you to create REST APIs in Haskell. These APIs can be run in different web frameworks. They can also be used to automatically generate documentation as well as client libraries.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "haskell"

echo '
* [Chaos](https://github.com/mesosphere/chaos) - A lightweight framework for writing REST services in Scala.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "scala"

echo '
* [RestExpress](https://github.com/RestExpress/RestExpress) - Netty-based, highly performant, lightweight, container-less, plugin-extensible, framework that is ideal for microservice architectures.
* [Vertx-Web](https://github.com/vert-x3/vertx-web) - Vert.x-Web is a set of building blocks for building web applications with Vert.x, a toolkit for building reactive applications on the JVM.
* [Dropwizard](https://github.com/dropwizard/dropwizard) - A framework for developing ops-friendly, high-performance, RESTful web services.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "java"

echo '
* [gocrud](https://github.com/manishrjain/gocrud) - Go library to simplify creating, updating and deleting arbitrary depth structured data to make building REST services fast and easy.
* [go-json-rest](https://github.com/ant0ine/go-json-rest) - Thin layer on top of `net/http` that helps building RESTful APIs easily.
* [sleepy](https://github.com/dougblack/sleepy) - RESTful micro-framework written in Go.
* [restit](https://github.com/yookoala/restit) - Go micro framework to help writing RESTful API integration test.
* [go-relax](https://github.com/codehack/go-relax) - Framework of pluggable components to build RESTful API.
* [go-rest](https://github.com/ungerik/go-rest) - Small and evil REST framework for Go.
* [go-restful](https://github.com/emicklei/go-restful) - A declarative highly readable framework for building restful API.
* [Goat](https://github.com/bahlo/goat) - Minimalistic REST API server in Go.
* [Resoursea](https://github.com/resoursea/api) - REST framework for quickly writing resource based services.
* [Zerver](https://github.com/cosiner/zerver) - Zerver is a expressive, modular, feature completed RESTful framework.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "go-lang"


echo '
* [Grape](http://www.ruby-grape.org) - Opinionated micro-framework for creating REST-like APIs in Ruby.
* [Rails](http://guides.rubyonrails.org/api_app.html) - RailsGuides: Using Rails for API-only applications.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "ruby"

echo '
* [Django REST framework](http://www.django-rest-framework.org/) - Powerful and flexible toolkit that makes it easy to build Web APIs.
* [django-tastypie](http://tastypieapi.org/) - Creating delicious APIs for Django apps.
* [flask-restful](http://flask-restful.readthedocs.org/) - Extension for Flask that adds support for quickly building REST APIs.
* [flask-restless](https://flask-restless.readthedocs.org/en/latest/) - Flask extension for generating ReSTful APIs for database models defined with SQLAlchemy (or Flask-SQLAlchemy).
* [hug](http://www.hug.rest/) - Lightweight and fast API Framework.
* [sandman](https://github.com/jeffknupp/sandman) - Automated REST APIs for existing database-driven systems.
* [restless](http://restless.readthedocs.org/en/latest/) - Framework agnostic REST framework based on lessons learned from TastyPie.
* [savory-pie](https://github.com/RueLaLa/savory-pie/) - REST API building library (django, and others).
* [Python Eve](http://python-eve.org/) - Eve is an open source Python REST API framework designed for human beings. It allows to effortlessly build and deploy highly customizable, fully featured RESTful Web Services.
* [Ramses](https://ramses.readthedocs.org/en/stable/) - Makes RAML files executable by generating production-ready APIs from them at runtime.
* [Flask-Potion](https://github.com/biosustain/potion) - Flask-Potion is a powerful Flask extension for building RESTful JSON APIs. It also provides several Clients for easier access to the API.
* [apistar](https://github.com/encode/apistar) - A smart Web API framework, designed for Python 3.
* [Falcon](https://github.com/falconry/falcon) - Falcon is a bare-metal Python web API framework for building high-performance microservices, app backends, and higher-level frameworks.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "python"

echo '
* [Firecamp](https://firecamp.io) – Protocol agnostic API testing client which help you test and manage RestAPIs, GraphQL, Websocket and many more.
* [httpie](https://github.com/jkbrzt/httpie) – Command line HTTP client, far more dev-friendly than `curl`.
* [HttpMaster](http://www.httpmaster.net) – GUI tool for testing REST APIs and services. Windows OS only.
* [jq](https://github.com/stedolan/jq) – Command line JSON processor, to use in combination with a command-line HTTP client like cURL.
* [Insomina](https://insomnia.rest/) – A Fancy HTTP REST Client.
* [resty](https://github.com/micha/resty) – Little command line REST client that you can use in pipelines (bash or zsh).
* [TestMace](https://testmace.com) – A modern powerful crossplatform tool for working with API and creating automated API tests.
* [httpie](https://github.com/jkbrzt/httpie) - Command line HTTP client, far more dev-friendly than `curl`.
* [Postman REST Client](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm) - Chrome extension essential to test manually REST API.
* [resty](https://github.com/micha/resty) - Little command line REST client that you can use in pipelines (bash or zsh).
* [jq](https://github.com/stedolan/jq) - Command line JSON processor, to use in combination with a command-line HTTP client like cURL.
* [HttpMaster](http://www.httpmaster.net) - GUI tool for testing REST APIs and services. Windows OS only.
* [Http-console](https://github.com/cloudhead/http-console) - Command line interface for HTTP that let you *speak HTTP like a local*
* [HTTP Prompt](https://github.com/eliangcs/http-prompt) - HTTP Prompt is an interactive command-line HTTP client featuring autocomplete and syntax highlighting, built on HTTPie and prompt_toolkit.
* [rest-assured](https://github.com/rest-assured/rest-assured) - Java DSL for easy testing of REST services.
* [Insomnia](https://github.com/getinsomnia/insomnia) - Cross-platform HTTP and GraphQL Client
* [ExtendsClass](https://extendsclass.com/rest-client-online.html) - Make HTTP requests with a simple web-based HTTP client.
* [TestMace](https://testmace.com) - Cross-platform simple but powerful IDE for API automation testing.
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
* [RequestBin](https://requestbin.com/) - Inspect and debug webhook requests sent by your clients or third-party APIs.
* [httpbin](http://httpbin.org) - HTTP request and response service - a/k/a Swiss Army Knife for HTTP.
* [FakeRest](https://github.com/marmelab/FakeRest) - Patch XMLHttpRequest to fake a REST API client-side.
* [json-server](https://github.com/typicode/json-server) - Serve a REST API from fixture files using quick prototyping.
* [Mocky.io](http://www.mocky.io/) - Free online service to create fake HTTP responses.
* [Swagger API Mock](https://github.com/bulkismaslom/swagger-api-mock) - Mock RESTful API based on swagger schema
* [Request Baskets](https://github.com/darklynx/request-baskets) - Service to collect HTTP requests and inspect them via RESTful API or web UI.
* [DuckRails](https://github.com/iridakos/duckrails) - Mock quickly & dynamically API endpoints.
' | ./venv/bin/python3 importer/listing_data_builder.py --category mocking

echo '
* [docbox](https://github.com/tmcw/docbox)  REST API documentation generator.
* [slate](https://github.com/tripit/slate) Beautiful static documentation for your API.
* [whiteboard](https://github.com/mpociot/whiteboard) Simply write beautiful API documentation.
* [Swagger](http://swagger.io/) - Documentation/querying web interface for REST APIs.
* [API doc](http://apidocjs.com/) - Inline Documentation for RESTful web APIs.
* [raml2html](https://github.com/raml2html/raml2html) - Generates HTML documentation from a RAML file.
* [ReDoc](https://github.com/Rebilly/ReDoc/) - OpenAPI/Swagger-powered three-panel documentation.
* [Slate](https://github.com/lord/slate) - Beautiful and responsive three-panel API documentation using Middleman.
* [RapidAPI](https://docs.rapidapi.com/docs) API Marketplace.
* [Readme.io](https://readme.io/) Beautiful, personalized, interactive developer hubs.
' | ./venv/bin/python3 importer/listing_data_builder.py --category documentation

echo '
* [Loopback](http://loopback.io) A highly extensible Node.js and TypeScript framework for building APIs and microservices.
* [Sails.js](http://sailsjs.org) Sails makes it easy to build custom, enterprise-grade Node.js apps.
* [FastAPI](https://github.com/tiangolo/fastapi) FastAPI framework, high performance, easy to learn, fast to code, ready for production.
* [rest-hapi](https://resthapi.com) A RESTful API generator.
' | ./venv/bin/python3 importer/listing_data_builder.py --category frameworks

echo '
* [API Umbrella](http://apiumbrella.io/) Open Source API Management.
* [KrakenD](http://krakend.io) KrakenD is a stateless, distributed, high-performance API Gateway that helps you effortlessly adopt microservices.
* [Mashape Kong](https://getkong.org/) The world’s most popular open source API gateway. Built for multi-cloud and hybrid, optimized for microservices and distributed architectures..
* [Tyk](https://tyk.io/) Open Source API Gateway.
* [WSO2 API Manager](http://wso2.com/api-management/) open source hybrid API management platform.
* [Kong](https://github.com/Kong/kong) - Scalable, distributed, and plugin oriented API gateway backed by Nginx.
* [Tyk API Gateway](https://github.com/TykTechnologies/tyk) - Lightweight API gateway with analytics logging, written in Go.
* [API Umbrella](https://github.com/NREL/api-umbrella) - API management platform for exposing web services, with web interface and analytics, written in Lua.
* [WSO2 API Management](https://github.com/wso2/product-apim) - API management tool with lightweight gateway and API lifecycle manangement, written in Java.
* [Express Gateway](https://github.com/ExpressGateway/express-gateway) - Microservices API Gateway built on top of ExpressJS (Node.js).
* [KrakenD](https://github.com/devopsfaith/krakend) Ultra performant API Gateway with middleware. Written in Go.
' | ./venv/bin/python3 importer/listing_data_builder.py --category "api-gateway"

echo '
* [JSON API](http://jsonapi.org/) - Standard for building APIs in JSON.
* [RAML](http://raml.org/) - Simple and succinct way to describe RESTful API.
* [JSend](http://labs.omniti.com/labs/jsend) - Simple specification that lays down some rules for how JSON responses from web servers should be formatted.
* [OData](http://www.odata.org/) - Open protocol to allow the creation and consumption of queryable and interoperable RESTful APIs. Quite complex.
* [HAL](https://tools.ietf.org/html/draft-kelly-json-hal-06) - Simple format that gives a consistent and easy way to hyperlink between resources in your API (see: [HATEOAS](#hateoas)).
* [JSON-LD](http://json-ld.org/) - Standard for describing Linked Data and hypermedia relations in JSON (W3C).
* [Hydra](http://www.hydra-cg.com/) - Vocabulary for Hypermedia-Driven Web APIs (W3C).
* [Schema.org](http://schema.org) - Collection of schemas describing common data models.
* [OpenAPI](https://openapis.org/) - Formerly known as the Swagger Specification, OpenAPI specifcation is the world’s most popular description format for defining Restful APIs.
' | ./venv/bin/python3 importer/listing_data_builder.py --category standards

echo '
* [Guzzle](http://guzzle.readthedocs.org/en/latest/) - HTTP client and framework for consuming RESTful web services.
* [Buzz](https://github.com/kriswallsmith/buzz) - Another lightweight HTTP client.
* [unirest for PHP](https://github.com/Mashape/unirest-php) - Simplified, lightweight HTTP client library.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "php"

echo '
* [restangular](https://github.com/mgonto/restangular) - AngularJS service to handle REST API properly and easily.
* [restful.js](https://github.com/marmelab/restful.js) - JS client for interacting with server-side RESTful resources.
* [traverson](https://github.com/basti1302/traverson) - A Hypermedia API/HATEOAS Client for Node.js and the Browser
* [raml-client-generator](https://github.com/mulesoft/raml-client-generator) - Generates static client libs for js.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "javascript"

echo '
 * [restler](https://github.com/danwrong/restler) - REST client library for node.js.
 * [unirest for Node.js](https://github.com/Mashape/unirest-nodejs) - Simplified, lightweight HTTP client library.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "node-js"

echo '
* [gopencils](https://github.com/bndr/gopencils) - Small and simple package to easily consume REST APIs.
* [resty](https://github.com/go-resty/resty) - Simple HTTP and REST client for Go inspired by Ruby rest-client.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "go"

echo '
* [RESTClient](https://github.com/rest-client/rest-client) - Simple HTTP and REST client for Ruby, inspired by microframework syntax for specifying actions.
* [Spyke](https://github.com/balvig/spyke) - Interact with REST services in an ActiveRecord-like manner.
* [excon](https://github.com/excon/excon) - Usable, fast, simple Ruby HTTP 1.1. It works great as a general HTTP(s) client and is particularly well suited to usage in API clients.
* [httparty](https://github.com/jnunemaker/httparty) - Makes HTTP fun again!
* [raml-ruby-client-generator](https://github.com/zlx/raml-ruby-client-generator) - Auto generate API client from a RAML file.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "ruby"

echo '
* [postgrest](https://github.com/begriffs/postgrest) - Serve a fully RESTful API directly from an existing PostgreSQL database.
* [MySQL HTTP plugin](http://blog.ulf-wendel.de/2014/mysql-5-7-http-plugin-mysql/) - Simple REST-like / CRUD server for any MySQL database.
* [pREST](https://github.com/prest/prest) - A fully RESTful API from any existing PostgreSQL database written in Go.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "database"

echo '
* [node-restify](https://github.com/restify/node-restify) - Framework specifically meant for REST API.
* [Sails.js](http://sailsjs.org/) - Node.js Web framework embedding a command to generate automatically a REST API.
* [mers](https://github.com/jspears/mers) - Express service exposing Mongoose finders as RESTful API.
* [Baucis](https://github.com/wprl/baucis) - Build scalable REST API based on your Mongoose entities.
* [flatiron-resourceful](https://github.com/flatiron/resourceful) - Isomorphic Resource engine for JavaScript.
* [loopback](http://loopback.io/) - Powerful Node.js framework for creating APIs and easily connecting to backend data sources.
* [Feathers](http://feathersjs.com/) - is a real-time, micro-service web framework that gives you control over your data via RESTful resources, sockets and flexible plug-ins.
* [Expressa](https://github.com/thomas4019/expressa) - Express middleware for creating APIs from JSON schemas with a simple admin editor and permissions model.
* [rest-hapi](https://github.com/JKHeadley/rest-hapi) - Generate RESTful API based on mongoose models that supports relational data.
* [Nestjsx-crud](https://github.com/nestjsx/crud) - Generate CRUD controllers and services for RESTful API with NestJS and TypeORM.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "node-js"

echo '
* [Microrest](https://github.com/marmelab/microrest.php) - Micro-web application providing a REST API on top of any relational database.
* [Negotiation](https://github.com/willdurand/Negotiation) - Content negotiation library.
* [Drest](https://github.com/leedavis81/drest) - Library for exposing Doctrine entities as REST resource endpoints.
* [Restler](https://github.com/Luracast/Restler) - Lightweight framework to expose PHP methods as RESTful web API.
* [HAL](https://github.com/blongden/hal) - Hypertext Application Language (HAL) builder library.
* [Apigility](https://github.com/zfcampus/zf-apigility-skeleton) - API builder built with Zend Framework 2.
* [phprest](https://github.com/phprest/phprest) - Specialized REST microframework for PHP.
* [Hateoas](https://github.com/willdurand/Hateoas) - PHP library to support implementing representations for HATEOAS REST web services.
* [Fusio](https://github.com/apioo/fusio) - Open source API management platform.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "php"

echo '
* [REST APIs with Symfony2](http://williamdurand.fr/2012/08/02/rest-apis-with-symfony2-the-right-way/) - Complete guide to build a state-of-the-art REST API with Symfony2 framework.
* [FOSRestBundle](https://github.com/FriendsOfSymfony/FOSRestBundle) - Bundle handling view, routing, error handling, etc. for your REST API.
* [stanlemon-rest-bundle](https://github.com/stanlemon/rest-bundle) - Build a REST API based on Doctrine entities using conventions over configuration.
* [lakion-Lionframe](http://lakion.com/lionframe) - Glu between several community libraries to ease API development.
* [BazingaHateoasBundle](https://github.com/willdurand/BazingaHateoasBundle) - Integrate the [Hateoas](https://github.com/willdurand/Hateoas) library into a Symfony2 application.
* [Symfony REST Edition](https://github.com/gimler/symfony-rest-edition) - Start with a Symfony2 application with all REST-friendly bundles pre-configured.
* [NgAdminGeneratorBundle](https://github.com/marmelab/NgAdminGeneratorBundle) - Boostrap ng-admin configuration based on `stanlemon/rest-bundle`.
* [DunglasApiBundle](https://github.com/dunglas/DunglasApiBundle) - Build a REST API which follow Hydra/JSON-LD specification.
* [API Platform](https://github.com/api-platform/api-platform) - Specialize Symfony edition for the creation of hypermedia REST APIs.
* [NelmioApiDocBundle](https://github.com/nelmio/NelmioApiDocBundle) - Generate documentation for your REST API from annotations.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "symphony php"

echo '
* [Runscope](https://www.runscope.com/) - Automated API Monitoring & Testing.
* [Ping-API](https://ping-api.com/) - Automated API Monitoring & Testing.
* [import.io Magic](https://magic.import.io/) - Create a REST API from any website in one click.
* [Apiary](https://apiary.io/) - Collaborative design, instant API mock, generated documentation, integrated code samples, debugging and automated testing.
* [Amazon API Gateway](https://aws.amazon.com/api-gateway/) - Amazon API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale.
* [Apigee](https://apigee.com) - Apigee is the leading provider of API technology and services for enterprises and developers.
* [3scale](https://www.3scale.net/) - Nginx based API gateway to integrate internal and external API services with 3scale API Management Platform.
* [Assertible](https://assertible.com) - Continuously test and monitor your APIs after deployments and across environments.
* [Moesif](https://www.moesif.com) - API Analytics for Debugging, Monitoring, and Usage Tracking for RESTful and GraphQL.
* [Beeceptor](https://beeceptor.com/) - An HTTP inspecting, mocking and proxing service. Gives named endpoints for creating mock API endpoints and simulate responses.
* [react-admin](https://github.com/marmelab/react-admin) - Add a ReactJS admin GUI to any RESTful API.
* [ng-admin](https://github.com/marmelab/ng-admin) - Add an AngularJS admin GUI to any RESTful API.
* [swagger-codegen](https://github.com/swagger-api/swagger-codegen) - Auto generation of client libraries or server stubs given an OpenAPI specification (formerly known as the Swagger Specification).
* [Lumber](https://github.com/ForestAdmin/lumber) - Generate the admin interface of your application.
' | ./venv/bin/python3 importer/listing_data_builder.py --category tosort --tags ""