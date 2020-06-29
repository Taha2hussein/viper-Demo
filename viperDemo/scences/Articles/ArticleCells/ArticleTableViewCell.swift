//
//  ArticleTableViewCell.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher
protocol ArticleCell {
    func setData(indexPath:IndexPath,articleModel : articlesModels)
}
class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var articleDAate: UILabel!
    @IBOutlet weak var atricleTitle: UILabel!
    @IBOutlet weak var articleType: UILabel!
    @IBOutlet weak var atricleImageView: AnimatableImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension ArticleTableViewCell :ArticleCell{
    func setData(indexPath: IndexPath, articleModel: articlesModels) {
        self.articleType.text = articleModel.tags[0].label
        self.articleDAate.text = articleModel.date
        self.atricleTitle.text = articleModel.title
        let url = URL(string: articleModel.imageURL)
       
        self.atricleImageView.kf.setImage(with: url)
    }
    
    
    
}
