//
//  DetailsFilmeViewController.swift
//  Meus Filmes
//
//  Created by Victor Rodrigues Novais on 26/04/20.
//  Copyright © 2020 Victoriano. All rights reserved.
//

import Foundation
import UIKit

class DetailsFilmeViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        filmeImageView.image = filme.image
        titleLabel.text = filme.title
        descriptionLabel.text = filme.description
        
        filmeImageView.layer.cornerRadius = 20
        filmeImageView.clipsToBounds = true
    }
    
}
