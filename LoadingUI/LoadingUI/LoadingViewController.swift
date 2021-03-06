//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Hunter Oppel on 5/20/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

/// UIViewController that displays a spinning loading icon. Begins animation upon loading by default.
open class LoadingViewController: UIViewController {
    
    @IBOutlet weak var loadingView: IndeterminateLoadingView!
    
    public var animateUponLoad = true
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        if animateUponLoad {
            startLoading()
        }
    }
    
    /// Manually starts the spinning animation for the given loading screen.
    public func startLoading() {
        loadingView.startAnimating()
    }
    
    /// Manually stops the spinning animation for the given loading screen.
    public func stopLoading() {
        loadingView.stopAnimating()
    }
}
