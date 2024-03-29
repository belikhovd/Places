//
//  MainViewController.swift
//  Places
//
//  Created by Danil Belikhov on 30.08.2020.
//  Copyright © 2020 Danil Belikhov. All rights reserved.
//

import UIKit
import RealmSwift

class MainViewController: UITableViewController {
    
    
    var places: Results<Place>!
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

        places = realm.objects(Place.self)
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.isEmpty ? 0 : places.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        let place = places[indexPath.row]

        cell.nameLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        cell.imagePlace.image = UIImage(data: place.imageData!)

        cell.imagePlace.layer.cornerRadius = cell.imagePlace.frame.size.height / 2
        cell.imagePlace.clipsToBounds = true

        return cell
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? NewPlaceTableViewController else {
            return
        }
        
        newPlaceVC.saveNewPlace()
        tableView.reloadData()
    }
    
}
