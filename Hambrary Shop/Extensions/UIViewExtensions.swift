//
//  UIViewExtensions.swift
//  Hambrary Shop
//
//  Created by Hamon on 20/01/22.
//

import Foundation
import UIKit

extension UIView {
    
    func getWidth() -> CGFloat {
        return UIScreen.self.main.bounds.width
    }
    
    func getHeigt() -> CGFloat {
        return UIScreen.self.main.bounds.height
    }
    
}

extension UIViewController {
    func getWidth() -> CGFloat {
        return UIScreen.self.main.bounds.width
    }
    
    func getHeigt() -> CGFloat {
        return UIScreen.self.main.bounds.height
    }
}
