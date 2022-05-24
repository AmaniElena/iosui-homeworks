//
//  PostViewController.swift
//  Navigation
//
//  Created by Elena on 23.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    var post = Post(title: "Здесь будет пост")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        makeBarItem()
        
    }
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func tapAction() {
        let infoVC = InfoViewController()
        infoVC.title = "New"
        navigationController?.pushViewController(infoVC, animated: true)
        
    }
}
