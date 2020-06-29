//
//  ViewController.swift
//  viperDemo
//
//  Created by A on 6/27/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
protocol  ArticleView :class{
    func showLoader() -> Void
    func hideLoader() -> Void
    func reloadTableView() -> Void
    func setDefaults() -> Void
}
class ArticleViewController: UIViewController {

    var presnter : ArticlePresentation!
    @IBOutlet weak var articleTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaults()
        presnter.getArticleData()
    }
   override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = false

      }
}

extension ArticleViewController :ArticleView{
    func setDefaults() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.articleTableView.reloadData()
        }
    }
    
    func showLoader() {
        print("show Loader")
        
    }
    func hideLoader(){
        print("hide Loader")
    }
    
    
}


extension ArticleViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = presnter.getNumber_Cell_Article(section: section)
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath)as! ArticleTableViewCell
        presnter.configureCell(cell: cell, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presnter.getArticleForIndex(index: indexPath)
        presnter.segueToDetailedArticles()
    }
    
    
}
