//
//  ViewController.swift
//  Hambrary Shop
//
//  Created by Hamon on 19/01/22.
//

import UIKit

class LoginViewController: BaseUIViewController {

    //widgets
    private let ivLogo: UIImageView = UIImageView()
    private let lLibrary: UITextView = UITextView()
    private let tfUserEmail: CustomTextField = CustomTextField(placeHolder: "Correo")
    private let tfUserPass: CustomTextField = CustomTextField(placeHolder: "Contraseña", isPassField: true)


    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        setupLogoImage()
        setupWelcomeLabel()
        setupTextField()
        setupFooter()
    }

    private func setupLogoImage() {
        view.addSubview(ivLogo)
        ivLogo.image = UIImage(imageLiteralResourceName: "ic_library")
        ivLogo.addAnchorsAndCenter(centerX: true, centerY: false, width: grid * 4, height: grid * 4, left: nil, top: height / 2, right: nil, bottom: nil, withAnchor: .top, relativeToView: nil)
        ivLogo.addAnchors(left: nil, top: 120, right: nil, bottom: nil)
    }

    private func setupWelcomeLabel() {
        view.addSubview(lLibrary)
        lLibrary.text = "!Bienvenidos"
        lLibrary.textAlignment = .center
        lLibrary.backgroundColor = .secondarySystemBackground
        lLibrary.font = UIFont(name: titleFont, size: 30)
        lLibrary.addAnchorsAndCenter(centerX: true, centerY: false, width: nil, height: 60, left: margin, top: margin, right: margin, bottom: nil, withAnchor: .top, relativeToView: ivLogo)
    }

    private func setupTextField() {
        view.addSubview(tfUserEmail)
        tfUserEmail.addAnchorsAndSize(width: nil, height: 50, left: margin, top: margin, right: margin, bottom: nil, withAnchor: .top, relativeToView: lLibrary)
        view.addSubview(tfUserPass)
        tfUserPass.addAnchorsAndSize(width: nil, height: 50, left: margin, top: margin, right: margin, bottom: nil, withAnchor: .top, relativeToView: tfUserEmail)
    }

    private func setupFooter() {

    }


}

