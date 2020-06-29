//
//  services.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
import Networking
class services{
    
     func callGetData(completion:@escaping([articlesModels]) -> Void){
        let networking = Networking(baseURL: constant.baseUrl)
        networking.get(constant.endPoint) { result in
            switch result {
            case .success(let response):
                let json = response.data
                // Do something with JSON, you can also get arrayBody
                
               
                let jsonDecoder = JSONDecoder()

                guard let jsonCatalogs = try? jsonDecoder.decode(Array<articlesModels>.self,from: json) else{return}
                print("json",jsonCatalogs.count)
                completion(jsonCatalogs)
                    
                
            case .failure(let response):
                print("failed to get Data")
                // Handle error
            }
        }
    }
}
