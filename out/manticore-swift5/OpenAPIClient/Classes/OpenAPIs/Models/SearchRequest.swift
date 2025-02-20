//
// SearchRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Payload for search operation */
public struct SearchRequest: Codable { 


    public var index: String
    public var query: [String:Any]
    public var limit: Int?
    public var offset: Int?
    public var maxMatches: Int?
    public var sort: [Any]?
    public var scriptFields: Any?
    public var highlight: Any?
    public var source: [String]?
    public var profile: Bool?

    public init(index: String, query: [String:Any], limit: Int? = nil, offset: Int? = nil, maxMatches: Int? = nil, sort: [Any]? = nil, scriptFields: Any? = nil, highlight: Any? = nil, source: [String]? = nil, profile: Bool? = nil) {
        self.index = index
        self.query = query
        self.limit = limit
        self.offset = offset
        self.maxMatches = maxMatches
        self.sort = sort
        self.scriptFields = scriptFields
        self.highlight = highlight
        self.source = source
        self.profile = profile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case index
        case query
        case limit
        case offset
        case maxMatches = "max_matches"
        case sort
        case scriptFields = "script_fields"
        case highlight
        case source = "_source"
        case profile
    }

}
