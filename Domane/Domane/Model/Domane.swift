// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let domanes = try? JSONDecoder().decode(Domanes.self, from: jsonData)



import Foundation



// MARK: - Domanes
struct Domanes: Codable {
    let total: Int
    let time: String
    let domains: [Domain]

    enum CodingKeys: String, CodingKey {
        case total, time
        case domains
    }
}

// MARK: - Domain
struct Domain: Hashable, Codable {
    let domain: String
    let country: String
    
    enum CodingKeys: String, CodingKey {
        case domain
        case country
    }
}
