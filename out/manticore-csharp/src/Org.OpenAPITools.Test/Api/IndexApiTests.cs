/* 
 * Manticore Search Client
 *
 * Please note that this client is experimental. For full documentation of the API methods consult https://manual.manticoresearch.com/. 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@manticoresearch.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using Org.OpenAPITools.Client;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Test
{
    /// <summary>
    ///  Class for testing IndexApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class IndexApiTests
    {
        private IndexApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new IndexApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of IndexApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOf' IndexApi
            //Assert.IsInstanceOf(typeof(IndexApi), instance);
        }

        
        /// <summary>
        /// Test Bulk
        /// </summary>
        [Test]
        public void BulkTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string body = null;
            //var response = instance.Bulk(body);
            //Assert.IsInstanceOf(typeof(BulkResponse), response, "response is BulkResponse");
        }
        
        /// <summary>
        /// Test Delete
        /// </summary>
        [Test]
        public void DeleteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //DeleteDocumentRequest deleteDocumentRequest = null;
            //var response = instance.Delete(deleteDocumentRequest);
            //Assert.IsInstanceOf(typeof(DeleteResponse), response, "response is DeleteResponse");
        }
        
        /// <summary>
        /// Test Insert
        /// </summary>
        [Test]
        public void InsertTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //InsertDocumentRequest insertDocumentRequest = null;
            //var response = instance.Insert(insertDocumentRequest);
            //Assert.IsInstanceOf(typeof(SuccessResponse), response, "response is SuccessResponse");
        }
        
        /// <summary>
        /// Test Replace
        /// </summary>
        [Test]
        public void ReplaceTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //InsertDocumentRequest insertDocumentRequest = null;
            //var response = instance.Replace(insertDocumentRequest);
            //Assert.IsInstanceOf(typeof(SuccessResponse), response, "response is SuccessResponse");
        }
        
        /// <summary>
        /// Test Update
        /// </summary>
        [Test]
        public void UpdateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //UpdateDocumentRequest updateDocumentRequest = null;
            //var response = instance.Update(updateDocumentRequest);
            //Assert.IsInstanceOf(typeof(UpdateResponse), response, "response is UpdateResponse");
        }
        
    }

}
