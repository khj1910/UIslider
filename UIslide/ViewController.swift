//
//  ViewController.swift
//  UIslide
//
//  Created by D7703_23 on 2019. 5. 2..
//  Copyright © 2019년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var count = 0
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = String(mySlider.value)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    @IBAction func siderMoved(_sender:Any){
        myLabel.text = String(Int(mySlider.value))
        myTabelView.reloadData()
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = myTabelView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let timeTableValue = Int(mySlider.value)
        myCell.textLabel?.text = String(timeTableValue + indexPath.row)
        return myCell
    }

    
}

