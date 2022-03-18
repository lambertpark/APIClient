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
        let client = APIClient(host: "pokeapi.co/api/v2") {
            $0.sessionConfiguration.httpAdditionalHeaders = ["Content-type": "application/json"]
            $0.sessionDelegate = PulseCore.URLSessionProxyDelegate()

            // If you also have a session delegate, add it to the delegate chain
            //$0.sessionDelegate = PulseCore.URLSessionProxyDelegate(delegate: yourDelegate)
        }

        do {
            try await client.send(.get("/pokemon")).value
        } catch {
            print(error)
        }
    
    }
}

