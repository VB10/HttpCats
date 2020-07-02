//
//  NetworkManager.swift
//  HttpCats
//
//  Created by Veli on 3.07.2020.
//  Copyright © 2020 Veli. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    private let baseUrl: String = "https://hwasampleapi.firebaseio.com"
    private let path: String = "http"
    func getHttpCats( onCompleted: @escaping ([HttpCat]) -> Void) {
        AF.request("\(baseUrl)/\(path).json", method: .get).validate().responseDecodable(of: [HttpCat].self) { (response) in
            guard let cats = response.value else { return }
            onCompleted(cats)
        }
    }

}

