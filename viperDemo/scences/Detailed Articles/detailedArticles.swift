//
//  detailedArticles.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
import Kingfisher
protocol detailedView :class{
    func setDefault() -> Void
    func getArticleDetails(articleModel : articlesModels)
}
class detailedArticles: UIViewController {
    
    @IBOutlet weak var detailedContent: UILabel!
    @IBOutlet weak var detailedDate: UILabel!
    @IBOutlet weak var detailedTitle: UILabel!
    @IBOutlet weak var detailedImageView: UIImageView!
    
    var detailedPresnter : detailedPresentation?
//    var articlePresentation : ArticlePresentation?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       detailedPresnter?.show()
       setDefault()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = true

    }
    
    func setData(articleData: articlesModels){
        
            
        self.detailedContent.text = articleData.content
        self.detailedDate.text = articleData.date
        self.detailedTitle.text = articleData.title
        if let image  = URL(string: articleData.imageURL){
         self.detailedImageView.kf.setImage(with: image)
        }
    }

  
    @IBAction func backButtonTapped(_ sender: Any) {
        //
        detailedPresnter?.backButton()
    }
}
extension detailedArticles :detailedView{
    func getArticleDetails(articleModel: articlesModels) {
      
        DispatchQueue.main.async {
            self.setData(articleData: articleModel)
        }
      

//        setData(articleData: articleModel)
    }
    
    func setDefault() {
        self.navigationItem.setHidesBackButton(true, animated: true);

     }
    
    
}
