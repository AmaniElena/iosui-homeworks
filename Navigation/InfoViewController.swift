//
//  InfoViewController.swift
//  Navigation
//
//  Created by Elena on 23.05.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        makeButton2()
    }
    private func makeButton2() {
        let buttonInfo = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        buttonInfo.center = view.center
        buttonInfo.setTitle("Тыкс", for: .normal)
        buttonInfo.backgroundColor = .black
        buttonInfo.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(buttonInfo)
    }
    @objc private func showAlert() {
        let alert = UIAlertController(title: "Вернуться обратно?", message: "Нажми на кнопку", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Да", style: .default) { _ in
            self.navigationController?.popViewController(animated: true)
        }
        let cancelAction = UIAlertAction(title: "Нет", style: .destructive)
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
        
}
