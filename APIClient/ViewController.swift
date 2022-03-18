//
//  ViewController.swift
//  APIClient
//
//  Created by Lambert Park on 2022/03/18.
//

import UIKit
import Get
import PulseCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        async {
            try await createUser()
        }
    }

    func createUser() async {
        let client = APIClient(host: "http://data.fixer.io") {
            $0.sessionDelegate = PulseCore.URLSessionProxyDelegate()

            // If you also have a session delegate, add it to the delegate chain
            //$0.sessionDelegate = PulseCore.URLSessionProxyDelegate(delegate: yourDelegate)
        }

        do {
            try await client.send(.get("/api/latest?access_key=14281c876ca6a11470587b7eb4982b89")).value
        } catch {
            print(error)
        }
    
    }
}

