//
//  AuthManager.swift
//  Spotify
//
//  Created by Mahesh Kulkarni on 27/04/22.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    private init() {}
    var isSignedIn:Bool {
        return false
    }
    private var accessToken: String? {
        return nil
    }
    private var refrehToken: String? {
        return nil
    }
    private var tokenExpirationDate: Date? {
        return nil
    }
    private var shouldRefreshToken : Bool? {
        return false
    }
    
}