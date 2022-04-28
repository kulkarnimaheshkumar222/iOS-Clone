//
//  WelComeViewController.swift
//  Spotify
//
//  Created by Mahesh Kulkarni on 27/04/22.
//

import UIKit

class WelComeViewController: UIViewController {
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In with Spotify", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect (x: 20,
                                     y: view.height-50-view.safeAreaInsets.bottom,
                                     width: view.width-40,
                                     height: 50)
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = {[weak self] (success) in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }

    private func handleSignIn(success: Bool) {
        
    }
}
