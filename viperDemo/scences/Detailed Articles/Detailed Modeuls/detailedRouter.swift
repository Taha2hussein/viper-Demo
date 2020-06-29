//
//  detailedRouter.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
protocol  detailedRouting {
    func back() -> Void
}

class detailedRouter {
    
    var view : UIViewController
    init(view:UIViewController) {
        self.view = view
    }
    
}
extension detailedRouter: detailedRouting{
    func back() {
        view.navigationController?.popToRootViewController(animated: true)
    }
    
    
}
