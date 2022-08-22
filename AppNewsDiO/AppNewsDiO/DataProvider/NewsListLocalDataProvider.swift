//
//  NewsListLocalDataProvider.swift
//  AppNewsDiO
//
//  Created by Sara Batista dos Santos Felix on 8/9/22.
//

import UIKit

protocol NewsListLocalDataProviderProtocol: GenericDataProvider { }

class NewsListLocalDataProvider: DataProviderManager<NewsListLocalDataProviderProtocol, NewsModel> {

    func getNewsList() {
        NewsListRepository.shared.getNewsList { newModelList, error in
            if let error = error {
                self.delegate?.errorData(self.delegate, error: error)
                return
            }

            if let model = newModelList {
                self.delegate?.success(model: model)
            }
        }
    }
}
