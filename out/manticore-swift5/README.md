# Swift5 API client for OpenAPIClient

Please note that this client is experimental.
For full documentation of the API methods consult https://manual.manticoresearch.com/.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://manticoresearch.com/contact-us/](https://manticoresearch.com/contact-us/)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://127.0.0.1:9308*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IndexAPI* | [**bulk**](docs/IndexAPI.md#bulk) | **POST** /json/bulk | Bulk index operations
*IndexAPI* | [**delete**](docs/IndexAPI.md#delete) | **POST** /json/delete | Delete a document in an index
*IndexAPI* | [**insert**](docs/IndexAPI.md#insert) | **POST** /json/insert | Create a new document in an index
*IndexAPI* | [**replace**](docs/IndexAPI.md#replace) | **POST** /json/replace | Replace new document in an index
*IndexAPI* | [**update**](docs/IndexAPI.md#update) | **POST** /json/update | Update a document in an index
*SearchAPI* | [**percolate**](docs/SearchAPI.md#percolate) | **POST** /json/pq/{index}/search | Perform reverse search on a percolate index
*SearchAPI* | [**search**](docs/SearchAPI.md#search) | **POST** /json/search | Performs a search
*UtilsAPI* | [**sql**](docs/UtilsAPI.md#sql) | **POST** /sql | Perform SQL requests


## Documentation For Models

 - [BulkResponse](docs/BulkResponse.md)
 - [DeleteDocumentRequest](docs/DeleteDocumentRequest.md)
 - [DeleteResponse](docs/DeleteResponse.md)
 - [InsertDocumentRequest](docs/InsertDocumentRequest.md)
 - [ModelErrorResponse](docs/ModelErrorResponse.md)
 - [PercolateRequest](docs/PercolateRequest.md)
 - [SearchRequest](docs/SearchRequest.md)
 - [SearchResponse](docs/SearchResponse.md)
 - [SearchResponseHits](docs/SearchResponseHits.md)
 - [SuccessResponse](docs/SuccessResponse.md)
 - [UpdateDocumentRequest](docs/UpdateDocumentRequest.md)
 - [UpdateResponse](docs/UpdateResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

info@manticoresearch.com

