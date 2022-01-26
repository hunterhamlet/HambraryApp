//
//  UIViewExtensions.swift
//  Hambrary Shop
//
//  Created by Hamon on 22/01/22.
//

import Foundation
import UIKit

extension UIView {

    func getCustomFont(fontSize: CGFloat = 18) -> UIFont? {
        return UIFont(name: "Marker Felt Wide", size: fontSize)
    }

    func setOnClickFunction( tapAction: Selector? ) {
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: tapAction))
    }

}
