//
//  ArticleListViewController.swift
//  NewsApp
//
//  Created by 小林純也 on 2017/09/19.
//  Copyright © 2017年 Junya Kobayashi. All rights reserved.
//

import UIKit
import Alamofire


class ArticleListViewController: UIViewController {
    let table = UITableView() //プロパティにtableを追加
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "新着記事"
        
        table.frame = view.frame
        view.addSubview(table)
        getArticles()
    }
    
    func getArticles() {
        Alamofire.request(get, "https://newsapi.org/v1/articles")
        .responseJSON{ in
            print(response.result.value)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
