//
//  AppSettings.swift
//  SandoChat
//
//  Created by Saruhan Kole on 6.09.2019.
//  Copyright © 2019 Saruhan Kole. All rights reserved.
//

import Foundation

final class AppSettings {
  
  private enum SettingKey: String {
    case displayName
  }
  
  static var displayName: String! {
    get {
      return UserDefaults.standard.string(forKey: SettingKey.displayName.rawValue)
    }
    set {
      let defaults = UserDefaults.standard
      let key = SettingKey.displayName.rawValue
      
      if let name = newValue {
        defaults.set(name, forKey: key)
      } else {
        defaults.removeObject(forKey: key)
      }
    }
  }
  
}