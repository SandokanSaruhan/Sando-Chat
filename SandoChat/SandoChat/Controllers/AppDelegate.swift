//
//  AppDelegate.swift
//  SandoChat
//
//  Created by Saruhan Kole on 6.09.2019.
//  Copyright © 2019 Saruhan Kole. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    ViewController.shared.show(in: UIWindow(frame: UIScreen.main.bounds))
    
    return true
  }
  
}

