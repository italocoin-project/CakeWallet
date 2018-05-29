//
//  Configurations.swift
//  CakeWallet
//
//  Created by Cake Technologies 27.01.2018.
//  Copyright © 2018 Cake Technologies. 
//

import Foundation

final class Configurations {
    enum DefaultsKeys: Stringify {
        case nodeUri, nodeLogin, nodePassword, termsOfUseAccepted, currentWalletName,
             currentWalletType, biometricAuthenticationOn, passwordIsRemembered, transactionPriority,
             currency, defaultNodeChanged, autoSwitchNode
        
        func stringify() -> String {
            switch self {
            case .nodeUri:
                return "node_uri"
            case .termsOfUseAccepted:
                return "terms_of_use_accepted"
            case .nodeLogin:
                return "node_login"
            case .nodePassword:
                return "node_password"
            case .currentWalletName:
                return "current_wallet_name"
            case .currentWalletType:
                return "current_wallet_type"
            case .biometricAuthenticationOn:
                return "biometric_authentication_on"
            case .passwordIsRemembered:
                return "pin_password_is_remembered"
            case .transactionPriority:
                return "saved_fee_priority"
            case .currency:
                return "currency"
            case .defaultNodeChanged:
                return "default_node_was_changed"
            case .autoSwitchNode:
                return "auto_switch_node"
            }
        }
    }
    
    static let preDefaultNodeUri = "93.91.118.9:13102"
    static let defaultNodeUri = "58.185.155.109:13102"
    static let defaultCurreny = Currency.usd
    static var termsOfUseUrl: URL? {
        return Bundle.main.url(forResource: "Terms_of_Use", withExtension: "rtf")
    }
    
    static let donactionAddress = "ipPQjQYEQsLL7Gv43PpHDLiFLsZzoGuZtEJ8ZCW2is5TGeMNPo66bTKXAAd3m3ceXp4aweqmZnAHt9bWHALkK7xR2MVhF8QFZ."
}
