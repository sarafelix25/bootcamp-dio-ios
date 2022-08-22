//
//  ViewController.swift
//  AppNewsDiO
//
//  Created by Sara Batista dos Santos Felix on 8/9/22.
//

import UIKit

class NewsListViewController: UIViewController, NewsListLocalDataProviderProtocol {

    @IBOutlet weak var newsListTableView: UITableView!

    private var newsList: [NewsModel]? {
        didSet {
            self.newsListTableView.reloadData()
        }
    }

    var localDataProvider: NewsListLocalDataProvider?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initLocalDataProvider()
        self.setupTableView()
    }

    func success(model: Any) {
        self.newsList = model as? [NewsModel]
    }

    func errorData(_ provide: GenericDataProvider?, error: Error) {
        print("Error: \(error.localizedDescription)")
    }

    private func initLocalDataProvider() {
        self.localDataProvider = NewsListLocalDataProvider()
        self.localDataProvider?.delegate = self
        self.localDataProvider?.getNewsList()
    }

    private func setupTableView() {
        self.newsListTableView.delegate = self
        self.newsListTableView.dataSource = self
        self.newsListTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowNewsViewController" , let destination = segue.destination as? NewsViewController {
            destination.news = sender as? NewsModel
        }
    }
}

extension NewsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let newsList = newsList else {
            fatalError("The selected news was not found")
        }
        performSegue(withIdentifier: "ShowNewsViewController", sender: newsList[indexPath.row])
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.newsList?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as? NewsTableViewCell else {
            fatalError("Unable to dequeue subclassed cell")
        }

        guard let newsList = newsList else {
            fatalError("Does not have a news list")
        }

        cell.news = newsList[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}


