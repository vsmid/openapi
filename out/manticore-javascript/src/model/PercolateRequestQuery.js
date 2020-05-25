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
 * The PercolateRequestQuery model module.
 * @module model/PercolateRequestQuery
 * @version 1.0.0
 */
class PercolateRequestQuery {
    /**
     * Constructs a new <code>PercolateRequestQuery</code>.
     * @alias module:model/PercolateRequestQuery
     * @param percolate {Object} 
     */
    constructor(percolate) { 
        
        PercolateRequestQuery.initialize(this, percolate);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, percolate) { 
        obj['percolate'] = percolate;
    }

    /**
     * Constructs a <code>PercolateRequestQuery</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PercolateRequestQuery} obj Optional instance to populate.
     * @return {module:model/PercolateRequestQuery} The populated <code>PercolateRequestQuery</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PercolateRequestQuery();

            if (data.hasOwnProperty('percolate')) {
                obj['percolate'] = ApiClient.convertToType(data['percolate'], Object);
            }
        }
        return obj;
    }


}

/**
 * @member {Object} percolate
 */
PercolateRequestQuery.prototype['percolate'] = undefined;






export default PercolateRequestQuery;

