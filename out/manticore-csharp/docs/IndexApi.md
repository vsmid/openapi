# Org.OpenAPITools.Api.IndexApi

All URIs are relative to *http://127.0.0.1:9308*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Bulk**](IndexApi.md#bulk) | **POST** /json/bulk | Bulk index operations
[**Delete**](IndexApi.md#delete) | **POST** /json/delete | Delete a document in an index
[**Insert**](IndexApi.md#insert) | **POST** /json/insert | Create a new document in an index
[**Replace**](IndexApi.md#replace) | **POST** /json/replace | Replace new document in an index
[**Update**](IndexApi.md#update) | **POST** /json/update | Update a document in an index



## Bulk

> BulkResponse Bulk (string body)

Bulk index operations

Sends multiple operatons like inserts, updates, replaces or deletes. 
For each operation it's object must have same format as in their dedicated method. 
The method expects a raw string as the batch in NDJSON.
 Each operation object needs to be serialized to 
 JSON and separated by endline (\n). 
 
  An example of raw input:
  
  ```
  {"insert": {"index": "movies", "doc": {"plot": "A secret team goes to North Pole", "rating": 9.5, "language": [2, 3], "title": "This is an older movie", "lon": 51.99, "meta": {"keywords":["travel","ice"],"genre":["adventure"]}, "year": 1950, "lat": 60.4, "advise": "PG-13"}}}
  \n
  {"delete": {"index": "movies","id":700}}
  ```
  
  Responds with an object telling whenever any errors occured and an array with status for each operation:
  
  ```
  {'items':[{'update':{'_index':'products','_id':1,'result':'updated'}},{'update':{'_index':'products','_id':2,'result':'updated'}}],'errors':false}
  ```
 


### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class BulkExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://127.0.0.1:9308";
            var apiInstance = new IndexApi(Configuration.Default);
            var body = body_example;  // string | 

            try
            {
                // Bulk index operations
                BulkResponse result = apiInstance.Bulk(body);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling IndexApi.Bulk: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**|  | 

### Return type

[**BulkResponse**](BulkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-ndjson
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | item updated |  -  |
| **0** | error |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Delete

> DeleteResponse Delete (DeleteDocumentRequest deleteDocumentRequest)

Delete a document in an index

Delete one or several documents.
The method has 2 ways of deleting: either by id, in case only one document is deleted or by using a  match query, in which case multiple documents can be delete .
Example of input to delete by id:

  ```
  {'index':'movies','id':100}
  ```

Example of input to delete using a query:

  ```
  {'index':'movies','query':{'bool':{'must':[{'query_string':'new movie'}]}}}
  ```

The match query has same syntax as in for searching.
Responds with an object telling how many documents got deleted: 

  ```
  {'_index':'products','updated':1}
  ```


### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class DeleteExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://127.0.0.1:9308";
            var apiInstance = new IndexApi(Configuration.Default);
            var deleteDocumentRequest = new DeleteDocumentRequest(); // DeleteDocumentRequest | 

            try
            {
                // Delete a document in an index
                DeleteResponse result = apiInstance.Delete(deleteDocumentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling IndexApi.Delete: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteDocumentRequest** | [**DeleteDocumentRequest**](DeleteDocumentRequest.md)|  | 

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | item updated |  -  |
| **0** | error |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Insert

> SuccessResponse Insert (InsertDocumentRequest insertDocumentRequest)

Create a new document in an index

Insert a document. 
Expects an object like:
 
  ```
  {'index':'movies','id':701,'doc':{'title':'This is an old movie','plot':'A secret team goes to North Pole','year':1950,'rating':9.5,'lat':60.4,'lon':51.99,'advise':'PG-13','meta':'{"keywords":{"travel","ice"},"genre":{"adventure"}}','language':[2,3]}}
  ```
 
The document id can also be missing, in which case an autogenerated one will be used:
         
  ```
  {'index':'movies','doc':{'title':'This is a new movie','plot':'A secret team goes to North Pole','year':2020,'rating':9.5,'lat':60.4,'lon':51.99,'advise':'PG-13','meta':'{"keywords":{"travel","ice"},"genre":{"adventure"}}','language':[2,3]}}
  ```
 
It responds with an object in format:
  
  ```
  {'_index':'products','_id':701,'created':true,'result':'created','status':201}
  ```


### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class InsertExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://127.0.0.1:9308";
            var apiInstance = new IndexApi(Configuration.Default);
            var insertDocumentRequest = new InsertDocumentRequest(); // InsertDocumentRequest | 

            try
            {
                // Create a new document in an index
                SuccessResponse result = apiInstance.Insert(insertDocumentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling IndexApi.Insert: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insertDocumentRequest** | [**InsertDocumentRequest**](InsertDocumentRequest.md)|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | error |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Replace

> SuccessResponse Replace (InsertDocumentRequest insertDocumentRequest)

Replace new document in an index

Replace an existing document. Input has same format as `insert` operation. <br/>
Responds with an object in format: <br/>

  ```
  {'_index':'products','_id':1,'created':false,'result':'updated','status':200}
  ```


### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class ReplaceExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://127.0.0.1:9308";
            var apiInstance = new IndexApi(Configuration.Default);
            var insertDocumentRequest = new InsertDocumentRequest(); // InsertDocumentRequest | 

            try
            {
                // Replace new document in an index
                SuccessResponse result = apiInstance.Replace(insertDocumentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling IndexApi.Replace: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insertDocumentRequest** | [**InsertDocumentRequest**](InsertDocumentRequest.md)|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | error |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Update

> UpdateResponse Update (UpdateDocumentRequest updateDocumentRequest)

Update a document in an index

Update one or several documents.
The update can be made by passing the id or by using a match query in case multiple documents can be updated.  For example update a document using document id:

  ```
  {'index':'movies','doc':{'rating':9.49},'id':100}
  ```

And update by using a match query:

  ```
  {'index':'movies','doc':{'rating':9.49},'query':{'bool':{'must':[{'query_string':'new movie'}]}}}
  ``` 

The match query has same syntax as for searching.
Responds with an object that tells how many documents where updated in format: 

  ```
  {'_index':'products','updated':1}
  ```


### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class UpdateExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://127.0.0.1:9308";
            var apiInstance = new IndexApi(Configuration.Default);
            var updateDocumentRequest = new UpdateDocumentRequest(); // UpdateDocumentRequest | 

            try
            {
                // Update a document in an index
                UpdateResponse result = apiInstance.Update(updateDocumentRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling IndexApi.Update: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateDocumentRequest** | [**UpdateDocumentRequest**](UpdateDocumentRequest.md)|  | 

### Return type

[**UpdateResponse**](UpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | item updated |  -  |
| **0** | error |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

