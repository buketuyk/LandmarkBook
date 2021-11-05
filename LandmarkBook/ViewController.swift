//
//  ViewController.swift
//  LandmarkBook
//
//  Created by BUKET UYSAL KUYU on 5.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Landmark Book Data
        
        landmarkNames.append("Buckingham")
        landmarkNames.append("Kensington")
        landmarkNames.append("London Eye")
        landmarkNames.append("Tower Bridge")
        landmarkNames.append("Trafalgar Square")
        landmarkNames.append("Westminster Abbey")
        
        landmarkImages.append(UIImage(named: "buckingham.jpg")!)
        landmarkImages.append(UIImage(named: "kensington.jpg")!)
        landmarkImages.append(UIImage(named: "london_eye.jpg")!)
        landmarkImages.append(UIImage(named: "tower_bridge.jpg")!)
        landmarkImages.append(UIImage(named: "trafalgar.jpg")!)
        landmarkImages.append(UIImage(named: "westminster.jpg")!)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete  {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
}

