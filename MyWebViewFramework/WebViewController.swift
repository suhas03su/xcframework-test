//
//  WebViewController.swift
//  MyWebViewFramework
//
//  Created by Suhas on 23/05/20.
//  Copyright © 2020 Suhas. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate, UIScrollViewDelegate {
    
    @IBOutlet weak var webViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var webView: WKWebView!
    var headerData: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.scrollView.delegate = self
        self.headerLabel.text = self.headerData
        let myURL = URL(string:"https://www.cashfree.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= 40 {
            let value = CGFloat(40.0)
            let contentOffsetValue = value - scrollView.contentOffset.y
            self.headerViewHeightConstraint.constant = contentOffsetValue
            self.webViewTopConstraint.constant = contentOffsetValue
        } else {
            self.headerViewHeightConstraint.constant = 0.0
            self.webViewTopConstraint.constant = 0.0
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
