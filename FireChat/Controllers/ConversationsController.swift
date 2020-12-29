//
//  ConversationsController.swift
//  FireChat
//
//  Created by Сергей Голенко on 29.12.2020.
//

import UIKit

class ConversationsController: UIViewController{
    
    
    
    
    //MARK: - Properties
    
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
      
    }
    
    //MARK: - Selectors
    @objc func showProfile(){
        print(" function showfile working")
    }
    
    
    //MARK: - Helpers
    func configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Messages"
        navigationController?.navigationBar.backgroundColor = .purple
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(showProfile))
    }

    
}


