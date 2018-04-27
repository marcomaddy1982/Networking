//
//  Environment.swift
//  IntiveDiscovery
//
//  Created by Marco Maddalena on 27.02.18.
//  Copyright © 2018 Intive. All rights reserved.
//

struct Environment {

    /// Base URL of the environment
    public var host: String

    /// This is the list of common headers which will be part of each Request
    /// Some headers value maybe overwritten by Request's own headers
    public var headers: [String: String] = [:]

    /// Initialize a new Environment
    ///
    /// - Parameters:
    ///   - name: name of the environment
    ///   - host: base url
    public init(host: String) {
        self.host = host
    }
}