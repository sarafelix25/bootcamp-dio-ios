//
//  GenericDataProvider.swift
//  AppNewsDiO
//
//  Created by Sara Batista dos Santos Felix on 8/9/22.
//

import UIKit

protocol GenericDataProvider {
    func success(model: Any)
    func errorData(_ provide: GenericDataProvider?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
