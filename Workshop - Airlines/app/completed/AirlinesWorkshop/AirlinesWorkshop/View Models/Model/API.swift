//
//  API.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/29/20.
//

import Foundation
import Combine
import SwiftUI

struct API {
    enum Error: LocalizedError, Identifiable {
        var id: String { localizedDescription }

        case addressUnreachable(URL)
        case invalidResponse

        var errorDescription: String? {
            switch self {
                case .invalidResponse: return "The server responded with garbage."
                case .addressUnreachable(let url): return "\(url.debugDescription)"
            }
        }
    }

    enum EndPoint {
        static let baseURL = URL(string: "http://127.0.0.1:3000/")!

        static func request(with url: URL) -> URLRequest {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")

            return request
        }
    }

    private let decoder = JSONDecoder()
    private let apiQueue = DispatchQueue(label: "API", qos: .default, attributes: .concurrent)
    

}
