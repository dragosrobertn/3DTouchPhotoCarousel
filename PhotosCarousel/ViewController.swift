//
//  ViewController.swift
//  PhotosCarousel
//
//  Created by Dragos Neagu on 06/03/2017.
//  Copyright © 2017 Dragos Neagu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let reusableIdentifier = "tableViewCell"
    var dummyObjects = [
        "images/breakfast.jpg", "images/corncob.jpg", "images/croissant.jpg",
        "images/paella.jpg", "images/dessert.jpg", "images/fruits.jpg"
    ]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath) as! CustomTableViewCell
        
        cell.myImageView.image = UIImage(named: dummyObjects[indexPath.row])
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyObjects.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier {
            if (id == "showFullImageSegue") {
                let newVC = segue.destination as! ShowImageViewController
                
                // Get the table cell we just tapped.
                if let cell = sender as? UITableViewCell, let indexPath = self.tableView.indexPath(for: cell)
                {
                    newVC.passedString = dummyObjects[indexPath.row]
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Photos Carousel"
        
        // Set the tableView source and delegate.
        tableView.dataSource = self
        tableView.delegate = self
        
        self.automaticallyAdjustsScrollViewInsets = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

