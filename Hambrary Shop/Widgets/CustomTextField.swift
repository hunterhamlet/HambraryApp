//
//  CustomTextField.swift
//  Hambrary Shop
//
//  Created by Hamon on 19/01/22.
//

import Foundation
import UIKit

class CustomTextField: UIView {

    private lazy var tfInformation: UITextField = UITextField()
    private lazy var tlUpperPlaceHolder: UILabel = UILabel()
    private lazy var containerTextField = UIView()
    private lazy var iconPass: UIImageView = UIImageView()
    private lazy var titlePlaceHolder: String = ""
    private lazy var isPassField: Bool = false

    init(placeHolder: String = "NONE", isPassField: Bool = false) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.titlePlaceHolder = placeHolder
        self.isPassField = isPassField
        initUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initUI() {
        setupContainer()
        setupTextFieldContainer()
        setupTextField()
        setupUpperPlaceHolder()
    }

    private func setupContainer() {
        self.backgroundColor = .secondarySystemBackground
    }

    private func setupUpperPlaceHolder() {
        tlUpperPlaceHolder.text = titlePlaceHolder
        if let font = getCustomFont(fontSize: 12) {
            tlUpperPlaceHolder.font = font
        }
        tlUpperPlaceHolder.backgroundColor = .secondarySystemBackground
        self.addSubview(tlUpperPlaceHolder)
        tlUpperPlaceHolder.addAnchorsAndSize(width: nil, height: 10, left: 30, top: 0, right: nil, bottom: nil, withAnchor: .right, relativeToView: nil)

    }

    private func setupTextField() {
        tfInformation.placeholder = titlePlaceHolder
        tfInformation.isSecureTextEntry = isPassField
        containerTextField.addSubview(tfInformation)
        setupPassOptions()
        tfInformation.addAnchorsAndCenter(centerX: nil, centerY: true, width: nil, height: nil, left: nil, top: 4, right: nil, bottom: 4)
    }

    private func setupTextFieldContainer() {
        self.addSubview(containerTextField)
        containerTextField.addAnchorsAndSize(width: nil, height: nil, left: 16, top: 5, right: 16, bottom: 5, withAnchor: nil, relativeToView: nil)
        containerTextField.layer.cornerRadius = 15.0
        containerTextField.layer.borderWidth = 1
        containerTextField.layer.borderColor = UIColor.black.cgColor

    }

    private func setupPassOptions() {
        if (isPassField) {
            tfInformation.isSecureTextEntry = true
            iconPass.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
            iconPass.image = UIImage(named: "ic_show_pass")
            self.addSubview(iconPass)
            iconPass.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTapPass)))
            tfInformation.addAnchors(left: nil, top: nil, right: 8, bottom: nil, withAnchor: .right,relativeToView: iconPass)
            tfInformation.addAnchors(left: 8, top: nil, right: nil, bottom: nil)
            iconPass.addAnchorsAndCenter(centerX: nil, centerY: true, width: 20, height: 20, left: nil, top: nil, right: nil, bottom: nil, relativeToView: nil)
            iconPass.addAnchors(left: nil, top: nil, right: 30, bottom: nil)
        } else {
            tfInformation.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: 8, top: nil, right: 8, bottom: nil)
        }
    }

    func togglePass() {
        tfInformation.isSecureTextEntry = !tfInformation.isSecureTextEntry
        if (tfInformation.isSecureTextEntry) {
            iconPass.image = UIImage(named: "ic_show_pass")
        } else {
            iconPass.image = UIImage(named: "ic_hide_pass")
        }
    }

    func getText() -> String {
        return tfInformation.text ?? ""
    }
    
    @objc func onTapPass() {
        print("pass icon select")
    }

}