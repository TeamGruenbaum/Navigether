import SwiftUI

struct RoutesResultView:View
{
    var body:some View
    {
        List
        {
            CardListItem(header: "Linie 7 - 18:35 Uhr", icon: TransportMode.getIcon(transportMode: .bus), description: "Leierndorfer Str., Langquaid\nRegensburg Hauptbahnhof, Regensburg\nAktuell 4 Minuten Verspätung", bottomView: RouteInformationView(routeInformationIconNames: ["facemask", "figure.roll"], callBus: false))
            
            CardListItem(header: "Linie 10 - 19:42 Uhr", icon: TransportMode.getIcon(transportMode: .bus), description: "Leierndorfer Str., Langquaid\nRegensburg Hauptbahnhof, Regensburg", bottomView: RouteInformationView(routeInformationIconNames: ["facemask", "bicycle", "arrow.left.arrow.right"], callBus: false))
            
            CardListItem(header: "Linie 15 - 21:07 Uhr", icon: TransportMode.getIcon(transportMode: .callbus), description: "Leierndorfer Str., Langquaid\nRegensburg Hauptbahnhof, Regensburg", bottomView: RouteInformationView(routeInformationIconNames: ["facemask", "bicycle", "arrow.left.arrow.right"], callBus: true))
        }
        .listStyle(.plain)
    }
}

struct RoutesResultViewPreviews: PreviewProvider
{
    static var previews:some View
    {
        RoutesResultView();
    }
}
