//
// InsertDocumentRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Object with document data.  */
public struct InsertDocumentRequest: Codable { 


    /** Name of the index */
    public var index: String
    /** Document ID.  */
    public var id: Int64?
    /** Object with document data  */
    public var doc: [String:Any]

    public init(index: String, id: Int64? = nil, doc: [String:Any]) {
        self.index = index
        self.id = id
        self.doc = doc
    }

}
