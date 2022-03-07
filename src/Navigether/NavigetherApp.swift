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
