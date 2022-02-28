//
//  ViewController.swift
//  MyProject
//
//  Created by T.Minh on 2/27/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(AppConfiguration.infoForKey(.baseURL) ?? "")
    }
}
