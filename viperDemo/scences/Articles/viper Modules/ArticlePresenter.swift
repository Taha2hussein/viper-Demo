//
//  ArticlePresenter.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit


protocol  ArticlePresentation:class {
    
    func getArticleData() -> Void
    func getDataSuccessfully(article: [articlesModels]) -> Void
    func getNumber_Cell_Article(section:Int) -> Int
    func configureCell (cell:ArticleTableViewCell,indexPath : IndexPath) -> Void
    func segueToDetailedArticles() -> Void
    
    func getArticleForIndex(index:IndexPath) -> Void
   
}

class ArticlePresenter{
    weak var view : ArticleView?
    var router : ArticlesRouting
    var interactor : ArticlesUseCases
    
    
    private var ArticleModelInstance = [articlesModels]()
    private var ArticleModelForIndex : articlesModels!
    
    
    
     init(router : ArticlesRouting, interactor:ArticlesUseCases, view: ArticleView){
        self.router = router
        self.interactor = interactor
        self.view = view
    }
}

extension ArticlePresenter :ArticlePresentation{
    
    func getArticleForIndex(index: IndexPath) {
        ArticleModelForIndex = ArticleModelInstance[index.row]
    }
    func segueToDetailedArticles() {
        router.segueToDetailedArticleViewController(articleModel: ArticleModelForIndex)
    }
    
   func configureCell(cell: ArticleTableViewCell,indexPath: IndexPath)  {
        let articleModel = self.ArticleModelInstance[indexPath.row]
        cell.setData(indexPath: indexPath, articleModel: articleModel)
    }
    
    func getNumber_Cell_Article(section: Int) -> Int {
        return ArticleModelInstance.count
    }
    
    func getDataSuccessfully(article: [articlesModels]) {
        view?.hideLoader()
        ArticleModelInstance = article
        view?.reloadTableView()
        print("count equal \(ArticleModelInstance.count)")
    }
    
    func getArticleData() {
        view?.showLoader()
         interactor.getData()
       print("Hi")
    }
    
    
}
