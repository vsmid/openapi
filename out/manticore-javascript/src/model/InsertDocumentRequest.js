/**
 * Manticore Search API
 * This is the API for Manticore Search HTTP protocol 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@manticoresearch.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The InsertDocumentRequest model module.
 * @module model/InsertDocumentRequest
 * @version 1.0.0
 */
class InsertDocumentRequest {
    /**
     * Constructs a new <code>InsertDocumentRequest</code>.
     * Object with document data. 
     * @alias module:model/InsertDocumentRequest
     * @param index {String} Name of the index
     * @param doc {Object} Object with document data 
     */
    constructor(index, doc) { 
        
        InsertDocumentRequest.initialize(this, index, doc);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, index, doc) { 
        obj['index'] = index;
        obj['doc'] = doc;
    }

    /**
     * Constructs a <code>InsertDocumentRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InsertDocumentRequest} obj Optional instance to populate.
     * @return {module:model/InsertDocumentRequest} The populated <code>InsertDocumentRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InsertDocumentRequest();

            if (data.hasOwnProperty('index')) {
                obj['index'] = ApiClient.convertToType(data['index'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('doc')) {
                obj['doc'] = ApiClient.convertToType(data['doc'], Object);
            }
        }
        return obj;
    }


}

/**
 * Name of the index
 * @member {String} index
 */
InsertDocumentRequest.prototype['index'] = undefined;

/**
 * Document ID. 
 * @member {Number} id
 */
InsertDocumentRequest.prototype['id'] = undefined;

/**
 * Object with document data 
 * @member {Object} doc
 */
InsertDocumentRequest.prototype['doc'] = undefined;






export default InsertDocumentRequest;

