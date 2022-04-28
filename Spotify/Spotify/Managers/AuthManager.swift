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
    
    struct Constant {
        static let clientId = "7d465e5765c843338e74127a127183b7"
        static let ClientSecret = "a3d3ba1f6741436986f9f10d6e6e8c8d"
    }
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
