//
//  FormViewController.swift
//  ExploreWKScriptMessageHandler
//
//  Created by Fabrizio Duroni on 13/05/2019.
//

import UIKit
import WebKit

class FormViewController: UIViewController, WKScriptMessageHandler {
    private var wkWebView: WKWebView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.setupWKWebview()
        self.loadPage()
    }

    private func setupWKWebview() {
        self.wkWebView = WKWebView(frame: self.view.bounds, configuration: self.getWKWebViewConfiguration())
        self.view.addSubview(self.wkWebView)
    }
    
    private func getWKWebViewConfiguration() -> WKWebViewConfiguration {
        let userController = WKUserContentController()
        userController.add(self, name: "observe")
        let configuration = WKWebViewConfiguration()
        configuration.userContentController = userController
        return configuration
    }

    private func loadPage() {
        if let url = Bundle.main.url(forResource: "form", withExtension: "html") {
            self.wkWebView.load(URLRequest(url: url))
        }
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if let data = message.body as? [String : String], let name = data["name"], let email = data["email"] {
            showUser(email: email, name: name)
        }
    }
    
    private func showUser(email: String, name: String) {
        let userDescription = "\(email) \(name)"
        let alertController = UIAlertController(title: "User", message: userDescription, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}
