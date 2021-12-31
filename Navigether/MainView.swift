import SwiftUI

struct MainView:View
{
    var body: some View
    {
        TabView()
        {
            RoutesView()
                .tabItem {
                    Label("Routen", systemImage: "arrow.triangle.branch")
            }
            
            TicketsView()
                .tabItem {
                    Label("Tickets", systemImage: "ticket.fill")
            }
            
            CommunityView()
                .tabItem {
                    Label("Community", systemImage: "person.2.fill")
            }
            
            Text("Noch zu erledigen")
                .tabItem {
                    Label("Mehr", systemImage: "ellipsis")
            }
        }
        .accentColor(Color(UIColor(named: "Primary")!))
    }
}
