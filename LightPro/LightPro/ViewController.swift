//
//  ViewController.swift
//  LightPro
//
//  Created by Marwah Ameen on 04/07/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLight()
    }

    func updateLight() {
        if lightOn{
            lightButton.setTitle("Light", for: .normal)
            lightButton.setTitleColor(.systemPink, for: .normal)
            greetingLabel.text = "Good Morning!"
            greetingLabel.textColor = .systemPink
            view.backgroundColor = .white
            
        }else{
            lightButton.setTitle("Dark", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
            lightButton.tintColor = .white
            greetingLabel.text = "Good Night!"
            greetingLabel.textColor = .white
            view.backgroundColor = .darkGray
            
        }
    }
    
    @IBAction func lightChanged(_ sender: UIButton) {
        lightOn.toggle()
        updateLight()
    }
    
}

