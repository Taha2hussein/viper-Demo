//
//  navigations.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
class Navigation {

        static func WithIdentifier(_ identifier:String ,_ viewController:UIViewController){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(withIdentifier: identifier)
            
        viewController.navigationController?.pushViewController(VC, animated: true)
        }
        
        static func Pop(_ viewController:UIViewController){
            viewController.navigationController?.popViewController(animated: true)
    //        viewController.dismiss(animated: true, completion: nil)
        }
        static func showAlert(_ Title:String,_ message:String,_ viewController:UIViewController){
            // create the alert
                   let alert = UIAlertController(title: Title, message: message , preferredStyle: UIAlertController.Style.alert)

                   // add an action (button)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                   // show the alert
                   viewController.present(alert, animated: true, completion: nil)
        }
}
