//
//  ArticlesRouter.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit

protocol  ArticlesRouting {
    
    func segueToDetailedArticleViewController(articleModel : articlesModels) -> Void
}

class ArticlesRouter{
    
    var  view: UIViewController
    init(view:UIViewController){
        self.view = view
    }
}

extension ArticlesRouter :ArticlesRouting{
    func segueToDetailedArticleViewController(articleModel : articlesModels) {
        let controller = detailedBuilder.Build(articleModel: articleModel)
//        Navigation.WithIdentifier("detailedArticles", viewController)
        view.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
