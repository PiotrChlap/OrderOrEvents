//
//  SecondViewController.swift
//  OrderOrEvents
//
//  Created by Piotr Chlapinski on 30/06/2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var eventNumber: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    

    func addEvent(from: String) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEventNumber \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }

}
