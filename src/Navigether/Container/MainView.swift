import SwiftUI

struct MainView:View
{
    var body: some View
    {
        TabView()
        {
            RoutesView()
                .tabItem {
                    Label("Routes", systemImage: "arrow.triangle.branch")
            }
            
            TicketsView()
                .tabItem {
                    Label("Tickets", systemImage: "ticket.fill")
            }
            
            ProfileView()
                .tabItem {
                    Label("Community", systemImage: "person.2.fill")
            }
        }
        .accentColor(Color(UIColor(named: "Primary")!))
    }
}
