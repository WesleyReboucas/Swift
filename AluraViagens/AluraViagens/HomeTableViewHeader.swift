//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Wesley Rebouças on 21/08/23.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
}
