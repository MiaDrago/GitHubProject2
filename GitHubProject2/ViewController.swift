//
//  ViewController.swift
//  GitHubProject2
//
//  Created by Mia Drago on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var array = ["Dog", "Cat", "Parrot"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = "\(array[indexPath.row])"
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewController2
         
        guard let selectedRow = tableView.indexPathForSelectedRow?.row else {return}
        
        vc2.name = vc2.nameLabel.text!
    }
    
}

