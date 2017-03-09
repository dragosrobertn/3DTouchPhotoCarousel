//
//  ShowImageViewController.swift
//  PhotosCarousel
//
//  Created by Dragos Neagu on 06/03/2017.
//  Copyright © 2017 Dragos Neagu. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController {
    
    @IBOutlet weak var fullImageView: UIImageView!
    var passedString = "images/camera.jpg"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // print(passedString)
        
        fullImageView.image = UIImage(named: passedString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
