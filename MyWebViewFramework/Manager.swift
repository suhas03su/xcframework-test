import Foundation
import UIKit

public class Manager {
    
    var headerData: String = ""
    
    public init(headerData: String) {
        self.headerData = headerData
    }
    
    public func viewController() -> UIViewController {
        let bundle = Bundle(for: WebViewController.self)
        let vc = WebViewController(nibName: "WebViewController", bundle: bundle)
        vc.headerData = self.headerData
        return vc
    }
}
