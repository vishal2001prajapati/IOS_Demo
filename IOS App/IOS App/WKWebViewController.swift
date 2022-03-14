//
//  WKWebViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 23/03/22.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {
        //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
      let  webView = WKWebView(frame: view.frame)
        view.addSubview(webView)
        guard let url = URL(string: "https://www.instagram.com/accounts/login/") else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
