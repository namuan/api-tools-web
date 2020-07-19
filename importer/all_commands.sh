#!/usr/bin/env bash

export PYTHONPATH=`pwd`:$PYTHONPATH

# This file will capture all the commands executed during the process of importing data
# So that it can be re-run if needed

rm api_tools_web.db

# Use Cmd + J -> Note (Live Template)

echo '
* [Rest for Haskell](https://github.com/silkapp/rest) - This package allows you to create REST APIs in Haskell. These APIs can be run in different web frameworks. They can also be used to automatically generate documentation as well as client libraries.
- [Scotty](https://github.com/scotty-web/scotty) - Micro web framework inspired by Sinatra, using WAI and Warp.
- [Spock](https://github.com/agrafix/Spock): Another Haskell web framework for rapid development.
- [Servant](https://github.com/haskell-servant/servant): A Type-Level Web DSL.
- [Yesod](https://github.com/yesodweb/yesod): The Haskell RESTful web framework.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "haskell"

echo '
- [Phoenix](http://phoenixframework.org/): Framework for building HTML5 apps, API backends and distributed systems.
- [Plug](https://github.com/elixir-plug/plug): A specification and conveniences for composable modules between web applications.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "elixir"

echo '
- [Cowboy](https://github.com/ninenines/cowboy): Small, fast, modular HTTP server written in Erlang.
- [Gen Microservice](https://github.com/videlalvaro/gen_microservice): This library solves the problem of implementing microservices with Erlang.
- [Mochiweb](https://github.com/mochi/mochiweb): Erlang library for building lightweight HTTP servers.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "erlang"

echo '
* [Chaos](https://github.com/mesosphere/chaos) - A lightweight framework for writing REST services in Scala.
- [Colossus](https://github.com/tumblr/colossus): I/O and microservice library for Scala.
- [Finatra](https://github.com/twitter/finatra): Fast, testable, Scala HTTP services built on Twitter-Server and Finagle.
- [Play](https://www.playframework.com/): The high velocity web framework for Java and Scala.
- [Scalatra](http://www.scalatra.org/): Simple, accessible and free web micro-framework.
- [Skinny Micro](https://github.com/skinny-framework/skinny-micro): Micro-web framework to build servlet applications in Scala.
- [Spray](http://spray.io/): Open-source toolkit for building REST/HTTP-based integration layers on top of Scala and Akka.
- [Akka HTTP](https://github.com/akka/akka-http): The Akka HTTP modules implement a full server- and client-side HTTP stack on top of akka-actor and akka-stream.
- [Swagger Akka HTTP](https://github.com/swagger-akka-http/swagger-akka-http): Swagger-Akka-Http brings Swagger support for Akka-Http Apis.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "scala"

echo '
* [RestExpress](https://github.com/RestExpress/RestExpress) - Netty-based, highly performant, lightweight, container-less, plugin-extensible, framework that is ideal for microservice architectures.
* [Vertx-Web](https://github.com/vert-x3/vertx-web) - Vert.x-Web is a set of building blocks for building web applications with Vert.x, a toolkit for building reactive applications on the JVM.
* [Dropwizard](https://github.com/dropwizard/dropwizard) - A framework for developing ops-friendly, high-performance, RESTful web services.
- [Rest.li](http://rest.li/): REST framework using type-safe bindings and asynchronous, non-blocking IO.
- [Jersey](https://jersey.java.net/): RESTful web services in Java.
- [Spring Boot](https://projects.spring.io/spring-boot/): RESTful Web Service using Spring, high-performance and little configuration needed.
- [Metamug Mason](https://github.com/metamug/mason): Create REST APIs with JSP tags and SQL. Edit and hot deploy REST resources on the server.
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
- [Go-Json-Rest](https://github.com/ant0ine/go-json-rest): Thin layer on top of `net/http` that helps building RESTful APIs easily
- [gocrud](https://github.com/manishrjain/gocrud): Go library to simplify creating, updating and deleting arbitrary depth structured data — to make building REST services fast and easy.
- [sleepy](https://github.com/dougblack/sleepy): RESTful micro-framework written in Go.
- [restit](https://github.com/go-restit/restit): Go micro framework to help writing RESTful API integration test.
- [go-relax](https://github.com/codehack/go-relax): Framework of pluggable components to build RESTful API.
- [go-rest](https://github.com/ungerik/go-rest): Small and evil REST framework for Go.
- [go-restful](https://github.com/emicklei/go-restful): A declarative highly readable framework for building restful API.
- [Goat](https://github.com/bahlo/goat): Minimalistic REST API server in Go.
- [Resoursea](https://github.com/resoursea/api): REST framework for quickly writing resource based services.
- [Zerver](https://github.com/cosiner/zerver): Zerver is a expressive, modular, feature completed RESTful framework.
- [Fibre](https://github.com/gofiber/fiber): :zap:Fiber is an Express inspired web framework written in Go with coffee.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "go-lang"

echo '
* [Grape](http://www.ruby-grape.org) - Opinionated micro-framework for creating REST-like APIs in Ruby.
* [Rails](http://guides.rubyonrails.org/api_app.html) - RailsGuides: Using Rails for API-only applications.
- [rails-api](https://github.com/rails-api/rails-api): Rails for API only applications.
- [pliny](https://github.com/interagent/pliny): Opinionated template Sinatra app for writing APIs in Ruby.
- [grape](https://github.com/ruby-grape/grape): An opinionated micro-framework for creating REST-like APIs in Ruby.
- [ActiveModel-Serializer](https://github.com/rails-api/active_model_serializers): Brings convention over configuration to your JSON generation.
- [rabl](https://github.com/nesquena/rabl): Generate JSON and XML from any ruby object.
- [jbuilder](https://github.com/rails/jbuilder): Create JSON structures via a Builder-style DSL.
- [roar](https://github.com/trailblazer/roar): Parse and render REST API documents using representers.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "ruby"

echo '
* [Django REST framework](http://www.django-rest-framework.org/) - Powerful and flexible toolkit that makes it easy to build Web APIs.
* [django-tastypie](http://tastypieapi.org/) - Creating delicious APIs for Django apps.
* [flask-restful](http://flask-restful.readthedocs.org/) - Extension for Flask that adds support for quickly building REST APIs.
* [flask-restless](https://flask-restless.readthedocs.org/en/latest/) - Flask extension for generating ReSTful APIs for database models defined with SQLAlchemy or Flask-SQLAlchemy.
* [hug](http://www.hug.rest/) - Lightweight and fast API Framework.
* [sandman](https://github.com/jeffknupp/sandman) - Automated REST APIs for existing database-driven systems.
* [restless](http://restless.readthedocs.org/en/latest/) - Framework agnostic REST framework based on lessons learned from TastyPie.
* [savory-pie](https://github.com/RueLaLa/savory-pie/) - REST API building library for django, and others.
* [Python Eve](http://python-eve.org/) - Eve is an open source Python REST API framework designed for human beings. It allows to effortlessly build and deploy highly customizable, fully featured RESTful Web Services.
* [Ramses](https://ramses.readthedocs.org/en/stable/) - Makes RAML files executable by generating production-ready APIs from them at runtime.
* [Flask-Potion](https://github.com/biosustain/potion) - Flask-Potion is a powerful Flask extension for building RESTful JSON APIs. It also provides several Clients for easier access to the API.
* [apistar](https://github.com/encode/apistar) - A smart Web API framework, designed for Python 3.
* [Falcon](https://github.com/falconry/falcon) - Falcon is a bare-metal Python web API framework for building high-performance microservices, app backends, and higher-level frameworks.
- [Django REST framework](http://www.django-rest-framework.org/): Toolkit that makes it easy to build Web APIs.
- [Tastypie](https://github.com/django-tastypie/django-tastypie): Webservice API framework for Django.
- [restless](https://github.com/toastdriven/restless): A lightweight REST miniframework for Python.
- [flask-restful](https://github.com/flask-restful/flask-restful): Simple framework for creating REST APIs.
- [Falcon](https://github.com/falconry/falcon): Falcon is a low-level, high-performance Python framework for building HTTP APIs, app backends, and higher-level frameworks.
- [Connexion](https://github.com/zalando/connexion): Swagger/OpenAPI First framework for Python on top of Flask with automatic endpoint validation and OAuth2 support
- [apistar](https://github.com/encode/apistar): A smart Web API framework, designed for Python3.
- [sanic](https://github.com/channelcat/sanic): Sanic is a Flask-like Python 3.5+ web server written to go fast.
- [hug](https://github.com/timothycrosley/hug): hug aims to make developing Python driven APIs as simple as possible, but no simpler.
- [FastAPI](https://github.com/tiangolo/fastapi): FastAPI is a modern, fast (high-performance), web framework for building APIs with Python 3.6+ based on standard Python type hints.
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
* [resty](https://github.com/micha/resty) - Little command line REST client that you can use in pipelines (bash or zsh).
* [jq](https://github.com/stedolan/jq) - Command line JSON processor, to use in combination with a command-line HTTP client like cURL.
* [HttpMaster](http://www.httpmaster.net) - GUI tool for testing REST APIs and services. Windows OS only.
* [Http-console](https://github.com/cloudhead/http-console) - Command line interface for HTTP that let you *speak HTTP like a local*
* [HTTP Prompt](https://github.com/eliangcs/http-prompt) - HTTP Prompt is an interactive command-line HTTP client featuring autocomplete and syntax highlighting, built on HTTPie and prompt_toolkit.
* [rest-assured](https://github.com/rest-assured/rest-assured) - Java DSL for easy testing of REST services.
* [Insomnia](https://github.com/getinsomnia/insomnia) - Cross-platform HTTP and GraphQL Client
* [ExtendsClass](https://extendsclass.com/rest-client-online.html) - Make HTTP requests with a simple web-based HTTP client.
* [TestMace](https://testmace.com) - Cross-platform simple but powerful IDE for API automation testing.
- [Assertible](https://assertible.com): Continuously test and monitor your APIs after deployments and across environments.
- [Pyresttest](https://github.com/svanoort/pyresttest): YAML based REST testing and API microbenchmarking tool
- [OWASP Zaproxy](https://github.com/zaproxy/zaproxy): A tool to test your API for known security vulnerabilities, with a great CI integration.
- [vREST NG](https://ng.vrest.io): An enterprise ready application for automated API Testing. It is very simple and intuitive application.
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
- [Beeceptor](https://beeceptor.com): An HTTP-proxy for rest APIs - inspect and build mock APIs.
- [MockBin](https://mockbin.com/): Generate mock HTTP endpoints.
- [httpbin](http://httpbin.org): Templated responses for testing various scenarios for HTTP requests.
- [Json-Server](https://github.com/typicode/json-server) Full fake REST API with zero coding.
- [Mockoon](https://mockoon.com): Desktop API mocking tool.
- [Postman](https://www.getpostman.com/docs/postman/mock_servers/setting_up_mock): Desktop API client and mocking tool.
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
- [ReDoc](https://github.com/Rebilly/ReDoc): OpenAPI/Swagger-generated API Reference Documentation.
- [Swagger UI](https://github.com/swagger-api/swagger-ui): Dynamically generate documentation from a Swagger-compliant API.
- [Slate](https://github.com/lord/slate): Static site generated documentation for your API.
- [prmd](https://github.com/interagent/prmd): JSON Schema tooling: scaffold, verify, and generate documentation from JSON Schema documents.
- [Aglio](https://github.com/danielgtaylor/aglio): An API Blueprint renderer with theme support that outputs static HTML.
- [Apiary](https://apiary.io/): Collaborative design, instant API mock, generated documentation, integrated code samples, debugging and automated testing.
- [Readme](https://readme.io/): API Documentation Hosting.
- [Embed curl](https://www.embedcurl.com/): Embeddable curl commands on the web.
- [Gelato](https://gelato.io/): Create developer portals for your API.
- [API Docs](https://api-docs.io/) - Hosted public API documentation for OpenAPI and RAML specs.
- [Docula](https://docu.la/): Documentation using Github and OpenAPI standards.
- [Docbox](https://github.com/tmcw/docbox): REST API documentation generator, using Markdown.
- [widdershins](https://github.com/Mermade/widdershins): REST API documentation generator from OpenAPI 3.0 / Swagger 2.0 / AsyncAPI 1.x / Semoasa 0.1.0 definition
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
* [API Umbrella](https://github.com/NREL/api-umbrella) - API management platform for exposing web services, with web interface and analytics, written in Lua.
* [WSO2 API Management](https://github.com/wso2/product-apim) - API management tool with lightweight gateway and API lifecycle manangement, written in Java.
* [Express Gateway](https://github.com/ExpressGateway/express-gateway) - Microservices API Gateway built on top of ExpressJS.
* [KrakenD](https://github.com/devopsfaith/krakend) Ultra performant API Gateway with middleware. Written in Go.
- [Ambassador API Gateway](https://www.getambassador.io/): Ambassador is a specialized control plane that translates Kubernetes annotations to Envoy configuration. All traffic is directly handled by the high-performance Envoy Proxy.
- [AWS API Gateway](https://aws.amazon.com/api-gateway/): Traffic management, authorization and access control, monitoring, and API version management.
- [API Umbrella](https://apiumbrella.io/): Proxy that sits in front of your APIs.
- [APIAxle](https://github.com/apiaxle/apiaxle/): Proxy that sits in front of your APIs.
- [APIGrove](https://apigrove.github.io/apigrove/): API manager built in Java on top of Fuse ESB.
* [Apigee](https://apigee.com) - Apigee is the leading provider of API technology and services for enterprises and developers.
- [Pushpin](http://pushpin.org): Proxy for both request/response or streaming of responses
- [Strongloop](https://github.com/strongloop/microgateway): nodejs based API Gateway
- [Fusio](http://www.fusio-project.org/): PHP based open source API management platform
- [Camel](https://camel.apache.org/): Empowers you to define routing and mediation rules in a variety of domain-specific languages, including a Java-based fluent API, Spring or Blueprint XML configuration files, and a Scala DSL.
- [HAProxy](http://www.haproxy.org/): Reliable, high Performance TCP/HTTP load balancer.
- [OpenResty](https://openresty.org/): Fast web application server built on top of Nginx.
- [Tengine](https://github.com/alibaba/tengine): A distribution of Nginx with some advanced features.
- [Tyk](https://tyk.io/): Open-source, fast and scalable API gateway, portal and API management platform.
- [Vulcand](https://github.com/vulcand/vulcand): Programmatic load balancer backed by Etcd.
- [Zuul](https://github.com/Netflix/zuul): An edge service that provides dynamic routing, monitoring, resiliency, security, and more.
- [Kong](https://getkong.org/): An open-source management layer for APIs, delivering high performance and reliability.
- [Janus](https://github.com/hellofresh/janus): A lightweight API Gateway written in Go.
- [fabio](https://github.com/fabiolb/fabio): A fast, modern, zero-conf load balancing router for deploying microservices managed by Consul.
- [Traefik](https://github.com/containous/traefik): Træfik is a modern HTTP reverse proxy and load balancer written in Go.
- [Oathkeeper](https://github.com/ory/oathkeeper): OIdentity & Access Proxy that authorizes HTTP requests based on sets of rules. Integrates with ORY Hydra.
' | ./venv/bin/python3 importer/listing_data_builder.py --category "api-management"

echo '
- [Online OpenAPI File Security Audit](https://apisecurity.io/tools/audit/): Free online static analysis of API contract files. Upload the file and get the report.
- [API Security checklist](https://github.com/shieldfy/API-Security-Checklist): Checklist of the most important security countermeasures when designing, testing, and releasing your API.
- [Ory Hydra](https://github.com/ory/hydra): OAuth2 server with OpenID Connect written in Go.
- [Approov](https://approov.io/): Mobile App Attestation to ban API abuse by verifying the software that is accessing your API. User authentication is not enough!
- [42Crunch](https://42crunch.com/) - API Security platform that includes static analysis, dynamic testing scan, and runtime protection wiht API firewall.
' | ./venv/bin/python3 importer/listing_data_builder.py --category "api-security" --tags "security"

echo '
- [Runscope](https://www.runscope.com/): API Performance Monitoring.
- [Ping-API](https://ping-api.com/): Automated API Testing.
' | ./venv/bin/python3 importer/listing_data_builder.py --category "api-monitoring" --tags "monitoring"

echo '
* [JSON API](http://jsonapi.org/) - Standard for building APIs in JSON.
* [RAML](http://raml.org/) - Simple and succinct way to describe RESTful API.
* [JSend](http://labs.omniti.com/labs/jsend) - Simple specification that lays down some rules for how JSON responses from web servers should be formatted.
* [OData](http://www.odata.org/) - Open protocol to allow the creation and consumption of queryable and interoperable RESTful APIs. Quite complex.
* [HAL](https://tools.ietf.org/html/draft-kelly-json-hal-06) - Simple format that gives a consistent and easy way to hyperlink between resources in your API.
* [JSON-LD](http://json-ld.org/) - Standard for describing Linked Data and hypermedia relations in JSON.
* [Hydra](http://www.hydra-cg.com/) - Vocabulary for Hypermedia-Driven Web APIs.
* [Schema.org](http://schema.org) - Collection of schemas describing common data models.
* [OpenAPI](https://openapis.org/) - Formerly known as the Swagger Specification, OpenAPI specifcation is the world’s most popular description format for defining Restful APIs.
- [API Blueprint](https://github.com/apiaryio/api-blueprint) A powerful high-level API description language for web APIs.
- [JSON Schema](http://json-schema.org/) JSON Schema is a vocabulary that allows you to annotate and validate JSON documents.
' | ./venv/bin/python3 importer/listing_data_builder.py --category standards

echo '
- [Google API Design Guide](https://cloud.google.com/apis/design/)
- [PayPal API Style Guide](https://github.com/paypal/api-standards/blob/master/api-style-guide.md)
- [Heroku Platform HTTP API Design Guide](https://github.com/interagent/http-api-design)
- [Haufe API Style Guide](http://work.haufegroup.io/api-style-guide/)
- [Microsoft REST API Guidelines](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md)
- [18F API Standards](https://github.com/18f/api-standards)
- [The RESTed NARWHL](https://www.narwhl.com/) Noun As Resource With HyperLinks.
- [White House Web API Standards](https://github.com/whitehouse/api-standards)
- [Zalando REST API Guidelines](https://zalando.github.io/restful-api-guidelines/)
- [API Stylebook Design Guidelines](http://apistylebook.com/design/guidelines/)
- [API Stylebook Design Topics](http://apistylebook.com/design/topics/)
- [Adidas-group API Design Guide](https://github.com/adidas-group/api-guidelines)
- [Azure API Design](https://docs.microsoft.com/en-us/azure/architecture/best-practices/api-design)
' | ./venv/bin/python3 importer/listing_data_builder.py --category standards --tags "style-guide"

echo '
- [Swagger Editor](http://editor.swagger.io/): An editor for designing Swagger specifications.
- [Swagger Tools and Integrations](https://swagger.io/open-source-integrations/): A list of libraries and frameworks serving the Swagger ecosystem.
- [Dredd](https://github.com/apiaryio/dredd): Validate API documentation written in API Blueprint against its backend implementation.
- [Restlet Studio](https://restlet.com/modules/studio/): Web IDE for API Design.
- [API Spec Converter](https://lucybot-inc.github.io/api-spec-converter/): Convert between different API spec formats.
- [Prism](http://stoplight.io/platform/prism/): Supercharge any OAS file with mocking, transformations, validations, and more.
- [Apimatic](https://www.apimatic.io/): Supports API description formats including Swagger, OAI format, RAML, API Blueprint, IO Docs, WADL, Postman Collections and HAR 1.4 and more
- [Mulesoft Anypoint](https://anypoint.mulesoft.com/): Design and publish enterprise-grade APIs using RAML
- [Sandbox](https://getsandbox.com/): Quick and easy mock RESTful API from API definitions
- [Restunited](https://restunited.com/): Generate SDK, Documentation with Testing and Debugging
' | ./venv/bin/python3 importer/listing_data_builder.py --category tools --tags "standards"

echo '
- [ExtendsClass](https://extendsclass.com/rest-client-online.html): Web-based HTTP client.
- [JSON Generator](http://www.json-generator.com/): Generate and host mock JSON data.
' | ./venv/bin/python3 importer/listing_data_builder.py --category tools --tags "clients hosted"

echo '
- [Firecamp](https://firecamp.io/): API Studio for WebSocket, Rest API and GraphQL.
- [HTTPie](https://httpie.org/): Command line HTTP client.
- [HttpMaster](https://www.httpmaster.net/): Desktop tool for REST API testing.
- [Paw](https://paw.cloud/): REST client for Mac.
- [Postman](https://www.getpostman.com): Desktop API testing tool.
- [Insomnia](https://insomnia.rest/): REST API client for Mac, Windows, and Linux.
- [Jsonium](http://jsonium.org/): Free REST client for JSON over HTTP protocols
' | ./venv/bin/python3 importer/listing_data_builder.py --category tools --tags "clients desktop"

echo '
* [Guzzle](http://guzzle.readthedocs.org/en/latest/) - HTTP client and framework for consuming RESTful web services.
* [Buzz](https://github.com/kriswallsmith/buzz) - Another lightweight HTTP client.
* [unirest for PHP](https://github.com/Mashape/unirest-php) - Simplified, lightweight HTTP client library.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "php"

echo '
* [restful.js](https://github.com/marmelab/restful.js) - JS client for interacting with server-side RESTful resources.
* [traverson](https://github.com/basti1302/traverson) - A Hypermedia API/HATEOAS Client for Node.js and the Browser
* [raml-client-generator](https://github.com/mulesoft/raml-client-generator) - Generates static client libs for js.
- [Restangular](https://github.com/mgonto/restangular): Restangular is an AngularJS service that simplifies common GET, POST, DELETE, and UPDATE requests with a minimum of client code
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "javascript"

echo '
- [Refit](https://github.com/paulcbetts/refit): The automatic type-safe REST library for .NET Core, Xamarin and .NET
- [WebAnchor](https://github.com/mattiasnordqvist/Web-Anchor): Web Anchor provides type-safe, testable and flexible access to web resources.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "dotnet"

echo '
- [Retrofit](https://square.github.io/retrofit/): A type-safe HTTP client for Android and Java.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "java"

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
* [excon](https://github.com/excon/excon) - Usable, fast, simple Ruby HTTP 1.1. It works great as a general HTTP client and is particularly well suited to usage in API clients.
* [httparty](https://github.com/jnunemaker/httparty) - Makes HTTP fun again!
* [raml-ruby-client-generator](https://github.com/zlx/raml-ruby-client-generator) - Auto generate API client from a RAML file.
- [Net-HTTP](https://apidock.com/ruby/Net/HTTP): An HTTP client API for Ruby.
- [faraday](https://github.com/lostisland/faraday): Simple, but flexible HTTP client library, with support for multiple backends.
- [rest-client](https://github.com/rest-client/rest-client): Simple HTTP and REST client for Ruby
- [heroics](https://github.com/interagent/heroics): Ruby HTTP client for APIs represented with JSON schema.
- [blanket](https://github.com/inf0rmer/blanket): A Ruby API wrapper.
- [nestful](https://github.com/maccman/nestful): Ruby HTTP/REST client.
' | ./venv/bin/python3 importer/listing_data_builder.py --category clients --tags "ruby"

echo '
* [postgrest](https://github.com/begriffs/postgrest) - Serve a fully RESTful API directly from an existing PostgreSQL database.
* [MySQL HTTP plugin](http://blog.ulf-wendel.de/2014/mysql-5-7-http-plugin-mysql/) - Simple REST-like / CRUD server for any MySQL database.
* [pREST](https://github.com/prest/prest) - A fully RESTful API from any existing PostgreSQL database written in Go.
- [xmysql](https://github.com/o1lab/xmysql): Generate REST APIs for any MySQL Database.
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "database"

echo '
* [node-restify](https://github.com/restify/node-restify) - Framework specifically meant for REST API.
* [Sails.js](http://sailsjs.org/) - Node.js Web framework embedding a command to generate automatically a REST API.
* [mers](https://github.com/jspears/mers) - Express service exposing Mongoose finders as RESTful API.
* [Baucis](https://github.com/wprl/baucis) - Build scalable REST API based on Mongoose, Express and Node.js streams.
* [flatiron-resourceful](https://github.com/flatiron/resourceful) - Isomorphic Resource engine for JavaScript.
* [loopback](http://loopback.io/) - Powerful Node.js framework for creating APIs and easily connecting to backend data sources.
* [Feathers](http://feathersjs.com/) - is a real-time, micro-service web framework that gives you control over your data via RESTful resources, sockets and flexible plug-ins.
* [Expressa](https://github.com/thomas4019/expressa) - Express middleware for creating APIs from JSON schemas with a simple admin editor and permissions model.
* [rest-hapi](https://github.com/JKHeadley/rest-hapi) - Generate RESTful API based on mongoose models that supports relational data.
* [Nestjsx-crud](https://github.com/nestjsx/crud) - Generate CRUD controllers and services for RESTful API with NestJS and TypeORM.
- [hapi.js](https://hapijs.com/): Web and services application framework for Node.js.
- [Restify](https://github.com/restify/node-restify): Node.js REST framework specifically meant for web service APIs.
- [Express](https://expressjs.com/): Fast, unopinionated, minimalist web framework for Node.js.
- [sailsjs](http://sailsjs.org/): Realtime MVC Framework for Node.js.
- [Actionhero](https://www.actionherojs.com/): Multi-transport Node.js API server with integrated cluster capabilities and delayed tasks.
- [Koa](http://koajs.com/): Next generation web framework for Node.js
- [Loopback](http://loopback.io/): Node.js framework for creating APIs and easily connecting to backend data sources.
- [Seneca](http://senecajs.org/): A microservices toolkit for Node.js.
- [Feathers](https://feathersjs.com/): Build RESTful and real-time APIs through Socket.io or Primus.
- [Deployd](https://github.com/deployd/deployd): Deployd is the simplest way to build realtime APIs for web and mobile apps
- [Nest](https://github.com/kamilmysliwiec/nest): A modern node.js framework for efficient and scalable web applications built on top of TypeScript
' | ./venv/bin/python3 importer/listing_data_builder.py --category servers --tags "node-js"

echo '
* [Microrest](https://github.com/marmelab/microrest.php) - Micro-web application providing a REST API on top of any relational database.
* [Negotiation](https://github.com/willdurand/Negotiation) - Content negotiation library.
* [Drest](https://github.com/leedavis81/drest) - Library for exposing Doctrine entities as REST resource endpoints.
* [Restler](https://github.com/Luracast/Restler) - Lightweight framework to expose PHP methods as RESTful web API.
* [HAL](https://github.com/blongden/hal) - Hypertext Application Language builder library.
* [Apigility](https://github.com/zfcampus/zf-apigility-skeleton) - API builder built with Zend Framework 2.
* [phprest](https://github.com/phprest/phprest) - Specialized REST microframework for PHP.
* [Hateoas](https://github.com/willdurand/Hateoas) - PHP library to support implementing representations for HATEOAS REST web services.
* [Fusio](https://github.com/apioo/fusio) - Open source API management platform.
- [API Platform](https://github.com/api-platform/api-platform): API framework on top of Symfony with JSON-LD, Schema.org and Hydra support
- [Dingo API](https://github.com/dingo/api): A RESTful API package for the Laravel and Lumen frameworks
- [Fractal](https://github.com/thephpleague/fractal): Fractal provides a presentation and transformation layer for complex data output, the like found in RESTful APIs, and works really well with JSON
- [Yii2 Framework](https://github.com/yiisoft/yii2): Provides a whole set of tools to simplify the task of implementing RESTful Web Service APIs
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
- [Dream Factory](https://github.com/dreamfactorysoftware/dreamfactory): Turn any database into an API platform.
* [Runscope](https://www.runscope.com/) - Automated API Monitoring & Testing.
* [Ping-API](https://ping-api.com/) - Automated API Monitoring & Testing.
* [Apiary](https://apiary.io/) - Collaborative design, instant API mock, generated documentation, integrated code samples, debugging and automated testing.
* [Amazon API Gateway](https://aws.amazon.com/api-gateway/) - Amazon API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale.
* [3scale](https://www.3scale.net/) - Nginx based API gateway to integrate internal and external API services with 3scale API Management Platform.
* [Assertible](https://assertible.com) - Continuously test and monitor your APIs after deployments and across environments.
* [Moesif](https://www.moesif.com) - API Analytics for Debugging, Monitoring, and Usage Tracking for RESTful and GraphQL.
* [Beeceptor](https://beeceptor.com/) - An HTTP inspecting, mocking and proxing service. Gives named endpoints for creating mock API endpoints and simulate responses.
* [react-admin](https://github.com/marmelab/react-admin) - Add a ReactJS admin GUI to any RESTful API.
* [ng-admin](https://github.com/marmelab/ng-admin) - Add an AngularJS admin GUI to any RESTful API.
* [swagger-codegen](https://github.com/swagger-api/swagger-codegen) - Auto generation of client libraries or server stubs given an OpenAPI specification.
* [Lumber](https://github.com/ForestAdmin/lumber) - Generate the admin interface of your application.
- [Tyk](https://tyk.io/features): API Developer Portal on top of API gateway, make your API gateway easier to be used by developers.
- [APIMATIC](https://apimatic.io/developer-experience-portal): Instantly build an API Portal with SDKs, Live Code Samples, Test Cases, API Transformation and language specific Docs & Reference - tailored for your API.
- [DWOLLA](https://developers.dwolla.com): Simple and powerful API for ACH transfers.
- [Fusio](https://www.fusio-project.org): Fusio is an open source API management platform which helps to build and manage REST APIs. Fusio provides all tools to quickly build an API from different data sources yet it is possible to create complete customized responses.
- [Gravitee](https://gravitee.io): Open source API platform, unleash the power of your APIs.
- [Wicked Haufe](https://wicked.haufe.io): Open Source API Management. A full stack open source solution to API Management, based on Mashape Kong, node.js, and docker.
' | ./venv/bin/python3 importer/listing_data_builder.py --category tosort --tags ""