# OpenapiClient::SearchApi

All URIs are relative to *http://127.0.0.1:9308*

Method | HTTP request | Description
------------- | ------------- | -------------
[**percolate**](SearchApi.md#percolate) | **POST** /json/pq/{index}/search | Perform reverse search on a percolate index
[**search**](SearchApi.md#search) | **POST** /json/search | Performs a search



## percolate

> SearchResponse percolate(index, percolate_request)

Perform reverse search on a percolate index

Performs a percolate search. 
This method must be used only on percolate indexes.

Expects two paramenters: the index name and an object with array of documents to be tested.
An example of the documents object:

  ```
  {"query":{"percolate":{"document":{"content":"sample content"}}}}
  ```

Responds with an object with matched stored queries: 

  ```
  {'timed_out':false,'hits':{'total':2,'max_score':1,'hits':[{'_index':'idx_pq_1','_type':'doc','_id':'2','_score':'1','_source':{'query':{'match':{'title':'some'},}}},{'_index':'idx_pq_1','_type':'doc','_id':'5','_score':'1','_source':{'query':{'ql':'some | none'}}}]}}
  ```


### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::SearchApi.new
index = 'index_example' # String | Name of the percolate index
percolate_request = {"query":{"percolate":{"document":{"title":"some text to match"}}}} # PercolateRequest | 

begin
  #Perform reverse search on a percolate index
  result = api_instance.percolate(index, percolate_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->percolate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index** | **String**| Name of the percolate index | 
 **percolate_request** | [**PercolateRequest**](PercolateRequest.md)|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search

> SearchResponse search(search_request)

Performs a search

Performs a search. 
Expects an object with mandatory properties:
* the index name
* the match query object
Example :

  ```
  {'index':'movies','query':{'bool':{'must':[{'query_string':' movie'}]}},'script_fields':{'myexpr':{'script':{'inline':'IF(rating>8,1,0)'}}},'sort':[{'myexpr':'desc'},{'_score':'desc'}],'profile':true}
  ```

It responds with an object with:
- time of execution
- if the query timed out
- an array with hits (matched documents)
- additional, if profiling is enabled, an array with profiling information is attached


  ```
  {'took':10,'timed_out':false,'hits':{'total':2,'hits':[{'_id':'1','_score':1,'_source':{'gid':11}},{'_id':'2','_score':1,'_source':{'gid':12}}]}}
  ```

For more information about the match query syntax, additional paramaters that can be set to the input and response, please check: https://docs.manticoresearch.com/latest/html/http_reference/json_search.html.


### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::SearchApi.new
search_request = OpenapiClient::SearchRequest.new # SearchRequest | 

begin
  #Performs a search
  result = api_instance.search(search_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request** | [**SearchRequest**](SearchRequest.md)|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

