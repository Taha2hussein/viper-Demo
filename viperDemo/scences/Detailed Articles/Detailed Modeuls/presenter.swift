//
//  presenter.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
protocol  detailedPresentation {
    func backButton() -> Void
    func show() -> Void
}

class detailedPresenter {
    
    weak var view : detailedView?
    var router : detailedRouting
    var interactor : detailedUseCases
//    weak var articlePresenter : ArticlePresenter?
    init(router:detailedRouting,interactor:detailedUseCases,view : detailedView) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}
extension detailedPresenter: detailedPresentation{
    func show() {
        print("ss")
    }
    
    
    
    func backButton() {
        router.back()
    }
    
    
    
    
}
