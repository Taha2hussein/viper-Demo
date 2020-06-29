//
//  ArticleBuilder.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit

class ArticleBuilder{
static func Build() -> UIViewController{
    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
    let view = storyBoard.instantiateViewController(identifier: "ArticleViewController")as! ArticleViewController
    
    let interactor = ArticlesInteractor()
    let router = ArticlesRouter(view: view)
    let presenter = ArticlePresenter(router: router, interactor: interactor, view: view)
    view.presnter = presenter
    interactor.presnter = presenter
    return view
  }
}
