//
//  ChansonCell.swift
//  Mon lecteur Youtube
//
//  Created by GONZALES David on 24/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {
    
    @IBOutlet weak var miniature: UIImageView!
    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    
    var chanson: Chanson!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func creerCell(_ chanson: Chanson) {
        self.chanson = chanson
        
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font: UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        let secondeLigne = NSAttributedString(string: "\n" + self.chanson.artiste, attributes: [.font: UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        attributed.append(secondeLigne)
        artisteEtTitreLabel.attributedText = attributed
        
    }
    
    func telechargerImage() {
        miniature.image = logo
        
        if let url = URL(string: self.chanson.miniatureUrl) {
            let session = URLSession.shared
            let task = session.dataTask(with: url, { (data, response, error) in
                if let imageData = Data, let image = UIImage(data: imageData) {
                    
                }
            })
            task.resume()
            
        
        }
        
    }
    
}
