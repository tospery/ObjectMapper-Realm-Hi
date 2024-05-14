//
//  StringProtocol+Extension.swift
//  HiIOS
//
//  Created by 杨建祥 on 2024/5/13.
//

import Foundation

extension StringProtocol {
    
    /// Returns `self` as `Bool` if conversion is possible.
    var asBool: Bool? {
        if let bool = Bool(asString) {
            return bool
        }
        
        switch lowercased() {
        case "true", "yes", "1", "enable": return true
        case "false", "no", "0", "disable": return false
        default: return nil
        }
    }
    
    /// Returns `self` as `String`
    var asString: String {
        if let string = self as? String {
            return string
        } else {
            return String(self)
        }
    }
}
