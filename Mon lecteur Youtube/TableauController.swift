//
//  TableauController.swift
//  Mon lecteur Youtube
//
//  Created by GONZALES David on 23/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let bella = Chanson(artiste: "Naestro", titre: "Bella ciao", code: "CAOFXTbECn0")
        chansons.append(bella)
        let perfect = Chanson(artiste: "Ed Sheeran", titre: "Perfect", code: "2Vv-BfVoq4g")
        chansons.append(perfect)
        tableView.reloadData()
    }
    
}
