//
//  HttpCats.swift
//  HttpCats
//
//  Created by Veli on 3.07.2020.
//  Copyright © 2020 Veli. All rights reserved.
//

import Foundation
struct HttpCat: Codable, Identifiable {
    var id = UUID()
    
    let welcomeDescription: String
    let imageURL: String
    let statusCode: Int

    enum CodingKeys: String, CodingKey {
        case welcomeDescription = "description"
        case imageURL = "imageUrl"
        case statusCode
    }
}
