//
//  NewsItemCell.swift
//  MADCC
//
//  Created by Alla Hajj on 4/15/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//

import UIKit

class NewsItemCell: UITableViewCell {

    
    @IBOutlet weak var catgoryLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    var newsItem: Newsitem? {
        didSet{
            if let item = newsItem {
                catgoryLabel.text = item.category.toString()
                catgoryLabel.textColor = item.category.toColor()
                summaryLabel.text = item.summary
            }
            else {
                catgoryLabel.text = nil
                summaryLabel.text = nil
            }
        }
    }
}