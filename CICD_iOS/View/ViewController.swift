//
//  ViewController.swift
//  CICD_iOS
//
//  Created by Amit Mondol on 31/8/24.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = StudentViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchAllStudent(20)
    }


}

