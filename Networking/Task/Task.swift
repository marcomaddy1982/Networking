//
//  Task.swift
//  IntiveDiscovery
//
//  Created by Marco Maddalena on 19.02.18.
//  Copyright © 2018 Intive. All rights reserved.
//

import Foundation

enum TaskState: Int {
    case none
    case pending
    case done
}

enum TaskResult<T, NetworkError> {
    case data(T)
    case error(NetworkError)
}

protocol Task: class {
    associatedtype Output

    typealias Handler = (TaskResult<Output, NetworkError>) -> Void

    /// Task request state
    var state: TaskState { get set }

    /// Request to execute
    var request: Request { get }

    /// Execute request in passed dispatcher
    ///
    /// - Parameter dispatcher: dispatcher
    /// - Paramter handler: returns the object you asked for
    func execute(in dispatcher: Dispatcher, handler: @escaping Handler)
}
