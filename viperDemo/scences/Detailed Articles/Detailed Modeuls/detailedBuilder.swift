//
//  detailedBuilder.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
class detailedBuilder{
    static func Build(articleModel : articlesModels) -> UIViewController{
  let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
  let view = storyBoard.instantiateViewController(identifier: "detailedArticles")as! detailedArticles
  
    
  let interactor = detailedInteractor()
    let router = detailedRouter(view: view)
  let presenter = detailedPresenter(router: router, interactor: interactor, view: view)
  view.detailedPresnter = presenter
  interactor.derailedPresenter = presenter
        view.getArticleDetails(articleModel: articleModel)
  
  return view
   }
}
