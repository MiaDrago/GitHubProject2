//
//  ViewController2.swift
//  GitHubProject2
//
//  Created by Mia Drago on 4/6/22.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        imageView.image = UIImage(named:name)
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
