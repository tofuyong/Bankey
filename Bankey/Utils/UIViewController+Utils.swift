//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by Andrea Yong on 16/10/23.
//

import UIKit

extension UIViewController {
//    func setStatusBar() {
//        let statusBarSize = UIApplication.shared.statusBarFrame.size
//        let frame = CGRect(origin: .zero, size: statusBarSize)
//        let statusBarView = UIView(frame: frame)
//
//        statusBarView.backgroundColor = appColor
//        view.addSubview(statusBarView)
//    }
    
    func setStatusBar() {
        // Check if the windowScene's statusBarManager is available
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let statusBarManager = windowScene.statusBarManager {
            
            // Get the statusBar's frame
            let statusBarFrame = statusBarManager.statusBarFrame
            
            let statusBarView = UIView(frame: statusBarFrame)
            statusBarView.backgroundColor = appColor
            view.addSubview(statusBarView)
        }
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
