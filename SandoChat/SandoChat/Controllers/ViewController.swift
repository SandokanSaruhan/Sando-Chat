//
//  ViewController.swift
//  SandoChat
//
//  Created by Saruhan Kole on 6.09.2019.
//  Copyright © 2019 Saruhan Kole. All rights reserved.
//

import UIKit
import Firebase

final class ViewController {
  
  static let shared = ViewController()
  
  init() {  
    NotificationCenter.default.addObserver(
      self,
      selector: #selector(userStateDidChange),
      name: Notification.Name.AuthStateDidChange,
      object: nil
    )
  }
  
  private var window: UIWindow!
  private var rootViewController: UIViewController? {
    didSet {
      if let vc = rootViewController {
        window.rootViewController = vc
      }
    }
  }
  
  // MARK: - Helpers
  
  func show(in window: UIWindow?) {
    guard let window = window else {
      fatalError("Cannot layout app with a nil window.")
    }
    
    FirebaseApp.configure()
    
    self.window = window
    window.tintColor = .primary
    window.backgroundColor = .white
    
    handleAppState()
    
    window.makeKeyAndVisible()
  }
  
  private func handleAppState() {
    if let user = Auth.auth().currentUser {
      let vc = ChannelsViewController(currentUser: user)
      rootViewController = NavigationController(vc)
    } else {
      rootViewController = LoginViewController()
    }
  }
  
  // MARK: - Notifications
  
  @objc internal func userStateDidChange() {
    DispatchQueue.main.async {
      self.handleAppState()
    }
  }
  
}
