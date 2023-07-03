//
//  Product.swift
//  Sample API Parsing Alamofire
//
//  Created by Sreejith np on 03/07/23.
//

import Foundation

// MARK: - ProductDetails
struct ProductDetails: Codable {
    var products: [Product]
    var total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable {
    var id: Int
    var title, description: String
    var price: Int
    var discountPercentage, rating: Double
    var stock: Int
    var brand, category: String
    var thumbnail: String
    var images: [String]
}
