//
//  NavigetherApp.swift
//  Navigether
//
//  Created by Steven Solleder on 22.12.21.
//

import SwiftUI

@main
struct NavigetherApp: App
{
    init()
    {
        UITableView.appearance().separatorStyle = .none;
    }
    
    var body: some Scene
    {
        WindowGroup
        {
            MainView()
        }
    }
}
