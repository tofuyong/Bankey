//
//  LocalState.swift
//  Bankey
//
//  Created by Andrea Yong on 16/10/23.
//

import Foundation

// Think of LocalState as a customized UserDefaults (a wrapper for UserDefaults)
public class LocalState {
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
        }
    }
}
