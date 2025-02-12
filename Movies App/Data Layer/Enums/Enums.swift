//
//  Enums.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 12/2/25.
//

import Foundation

enum NetworkError: Error {
    case generalError
    case invalidUrl
    case invalidResponse
    case noData
    case degodingError
}
