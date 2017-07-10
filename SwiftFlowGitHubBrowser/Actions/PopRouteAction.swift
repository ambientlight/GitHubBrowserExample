//
//  PopRouteAction.swift
//  SwiftFlowGitHubBrowser
//
//  Created by Taras Vozniuk on 11/07/2017.
//  Copyright © 2017 Benji Encz. All rights reserved.
//

import Foundation
import ReSwiftRouter

func popRouteAction() -> SetRouteAction? {
    let currentRoute = store.state.navigationState.route
    guard currentRoute.startIndex != currentRoute.endIndex else {
        return nil
    }
    
    return SetRouteAction([RouteElementIdentifier](currentRoute[currentRoute.startIndex ..< currentRoute.endIndex.advanced(by: -1)]))
}
