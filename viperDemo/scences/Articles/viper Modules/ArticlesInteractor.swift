//
//  ArticlesInteractor.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import Foundation

protocol  ArticlesUseCases {
 
    func getData() -> Void
}

class ArticlesInteractor{
    weak var presnter : ArticlePresenter?
}

extension ArticlesInteractor :ArticlesUseCases{
    func getData() -> Void {
        let serviceInstance  = services()
        serviceInstance.callGetData {[weak self] (articlesModels) in
            DispatchQueue.global(qos: .background).async {
                self?.presnter?.getDataSuccessfully(article: articlesModels)
            }
        }
        
    }
    
   
    
    
}
