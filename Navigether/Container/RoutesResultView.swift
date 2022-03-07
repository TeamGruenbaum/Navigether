import SwiftUI

struct RoutesResultView:View
{
    var body:some View
    {
        List
        {
            CardListItem(header: "Line 7: 6:35 PM - 7:15 PM", icon: TransportMode.getIcon(transportMode: .bus), description: "Leierndorfer Str., Langquaid\nRegensburg Central Station, Regensburg\nCurrently 4 minutes delay", bottomView: RouteInformationView(routeInformationIconNames: ["facemask", "figure.roll"], callBus: false))
            
            CardListItem(header: "Line 10: 7:42 PM - 8:31 PM", icon: TransportMode.getIcon(transportMode: .bus), description: "Leierndorfer Str., Langquaid\nRegensburg Central Station, Regensburg", bottomView: RouteInformationView(routeInformationIconNames: ["facemask", "bicycle", "arrow.left.arrow.right"], callBus: false))
            
            CardListItem(header: "Line 15: 9:07 PM - 9:58 PM", icon: TransportMode.getIcon(transportMode: .callbus), description: "Leierndorfer Str., Langquaid\nRegensburg Central Station, Regensburg", bottomView: RouteInformationView(routeInformationIconNames: ["facemask"], callBus: true))
        }
        .listStyle(.plain)
    }
}
