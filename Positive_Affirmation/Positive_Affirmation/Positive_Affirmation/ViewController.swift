//
//  ViewController.swift
//  Positive_Affirmation
//
//  Created by Brandon Petersen on 11/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Creating an array of images to choose from
    var imageArray = [#imageLiteral(resourceName: "PNG image-1E9BE5A87253-1.png"), #imageLiteral(resourceName: "PNG image-4DC72BD5B0E7-1.png"), #imageLiteral(resourceName: "PNG image-7C7F8DC9D1B5-1.png"), #imageLiteral(resourceName: "PNG image-7D54120F7D7C-1.png"), #imageLiteral(resourceName: "PNG image-1603E4378588-1.png"), #imageLiteral(resourceName: "PNG image-5599ECBB47F1-1.png"), #imageLiteral(resourceName: "PNG image-A2487AC8433A-1.png"), #imageLiteral(resourceName: "PNG image-D201AB899420-1.png"), #imageLiteral(resourceName: "PNG image-E74285E1DA39-1.png"), #imageLiteral(resourceName: "PNG image-F9659EA513C7-1.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // When app loads start on random image in array
        positiveImage.image = imageArray.randomElement()
    }
    
    // IBOutlet for positive affirmation image
    @IBOutlet weak var positiveImage: UIImageView!
    // IBAction for random positive affirmation image
    @IBAction func randomImageButton(_ sender: UIButton) {
        
        // Generating random image everytime the random button is pressed
        positiveImage.image = imageArray.randomElement()
    }
    
}

