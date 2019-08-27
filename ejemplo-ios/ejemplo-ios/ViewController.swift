//
//  ViewController.swift
//  ejemplo-ios
//
//  Created by Matias Ramos on 27/08/2019.
//  Copyright © 2019 owboard-200819. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var userListView: UIStackView!
    
    @IBAction func onCreate(_ sender: UIButton) {
        if userField.hasText && mailField.hasText{
            // Hago algo
            let url = URL(string: "localhost:80")!
            var request = URLRequest(url: url)
            
            request.httpMethod = "POST"
            let parameters: [String: Any] = [
                "nombre": userField.text!,
                "mail": mailField.text!,
            ]
        
            // TODO ver como meter la request en el body de la request
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Cargamos el userlistView inicialmente
    }


}

