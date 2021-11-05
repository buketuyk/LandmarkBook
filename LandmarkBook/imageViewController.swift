//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by BUKET UYSAL KUYU on 5.11.2021.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblLandmarkName: UILabel!
    @IBOutlet weak var txtView: UITextView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedLandmarkImage
        lblLandmarkName.text = selectedLandmarkName
       
    }
}
