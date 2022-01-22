//
//  ViewController.swift
//  Hambrary Shop
//
//  Created by Hamon on 19/01/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private lazy var width = UIScreen.main.bounds.width
    private lazy var height = UIScreen.main.bounds.height
    
    private lazy var middleWidth = width / 2
    private lazy var middleHeight = height / 2
    
    private lazy var startPoint = 16
    private lazy var endPoint  = width - 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        print("Login view controller")
    }
    
    private func setupUI() {
        setupMainView()
        print("widt in class: \(width)")
        print("widt in extension: \(self.getWidth())")
    }
    
    private func setupMainView() {
        view.backgroundColor = .secondarySystemBackground
    }
    
    private func setupLoginScreen() {
        
    }


}

