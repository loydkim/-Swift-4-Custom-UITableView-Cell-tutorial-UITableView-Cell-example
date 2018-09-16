//
//  ViewController.swift
//  CustomTableView
//
//  Created by YOUNGSIC KIM on 2018-09-15.
//  Copyright © 2018 YOUNGSIC KIM. All rights reserved.
//

import UIKit
class TestCell: UITableViewCell {
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
}
class ViewController: UIViewController {
    @IBOutlet weak var mainTable: UITableView!
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let testCell:TestCell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TestCell
        let imageName = String(indexPath.row)+".jpg"
        testCell.thumbnailImage.image = UIImage(named: imageName)
        testCell.titleLabel.text = "This is title Label number is "+String(indexPath.row)
        testCell.subTitleLabel.text = "Subtitle need long sentences I think so, this is subtitle! and number is "+String(indexPath.row)
        return testCell
    }
}
