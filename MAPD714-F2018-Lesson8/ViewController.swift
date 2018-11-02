//
//  ViewController.swift
//  MAPD714-F2018-Lesson8
//
//  Created by Tom Tsiliopoulos on 2018-11-01.
//  Copyright © 2018 CentennialCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let movies = ["Star Wars", "The Alien", "Indiana Jones and the Raiders of the Lost Ark", "Deadpool", "Avengers: Ifinity War", "Die Hard", "Gladiator", "The Terminator"]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    var currentSelectedRow:Int!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell == nil) {
            cell = UITableViewCell(style: .value1, reuseIdentifier: simpleTableIdentifier)
        }
        
        let image = UIImage(named: "star")
        cell?.imageView?.image = image
        
        let highLightedImage = UIImage(named: "star2")
        cell?.imageView?.highlightedImage = highLightedImage
        
        cell?.textLabel?.text = movies[indexPath.row]
        
        cell?.detailTextLabel?.text = "Secondary Label"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath.row == 0 ? nil : indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowValue = movies[indexPath.row]
        self.currentSelectedRow = indexPath.row
        let message = "You Selected: \(rowValue)"
        let controller = UIAlertController(title: "Row Selected", message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: okActionPressed)
        let CancelAction = UIAlertAction(title: "Cancel", style: .default, handler: cancelActionPressed)
        
        controller.addAction(OKAction)
        controller.addAction(CancelAction)
        present(controller, animated: true, completion: nil)
    }
    
    func okActionPressed(alert: UIAlertAction!) {
        print("You Pressed Row: \(self.currentSelectedRow)")
    }
    
    func cancelActionPressed(alert: UIAlertAction!) {
        print("Cancel Pressed")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

