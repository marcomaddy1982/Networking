//
//  EnviromenmentCreator.swift
//  Networking
//
//  Created by Marco Maddalena on 27.02.18.
//  Copyright © 2018 Intive. All rights reserved.
//

import Foundation

public enum Endpoint: String {
    case dev
    case prod

    private var apiId: String {
        return "8za88ovv82"
    }
    
    private var action: String {
        return "execute-api"
    }
    
    private var awsRegion: String {
        return "eu-central-1"
    }
    
    private var stage: String {
        return self.rawValue
    }
    
    private var awsBase: String {
        return "amazonaws.com"
    }
    
    fileprivate var baseURL: String {
        return "https://\(apiId).\(action).\(awsRegion).\(awsBase)/\(stage)"
    }

    fileprivate var headers: [String: String] {
        return [:]
    }
}

public final class EnvironmentCreator {
    
    public static func environment(for endpoint: Endpoint) -> Environment {
        return Environment(host: endpoint.baseURL)
    }
}
