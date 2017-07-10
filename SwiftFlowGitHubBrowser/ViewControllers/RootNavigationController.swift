//
//  RootNavigationController.swift
//  SwiftFlowGitHubBrowser
//
//  Created by Taras Vozniuk on 10/07/2017.
//  Copyright © 2017 Benji Encz. All rights reserved.
//

import UIKit
import ReSwiftRouter

class RootNavigationController: NavigationController {
    override func popRoute() {
        if let popRouteAction = popRouteAction(){
            store.dispatch(popRouteAction)
        }
    }
}
