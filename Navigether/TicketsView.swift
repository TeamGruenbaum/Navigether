import SwiftUI

struct TicketsView:View
{
    var body:some View
    {
        List
        {
            CardListItem<Never>(header: "VGN Einzelticket", icon: TransportMode.getIcon(transportMode: .bus), description: "Gilt einmalig am 23.12.2021 auf der Busstrecke von Feustelstr. nach Bayreuth Hbf.", imageAsset: "VGNWebsiteQRCode")
            
            CardListItem<Never>(header: "DB Ticket Flex", icon: TransportMode.getIcon(transportMode: .train), description: "Gilt einmalig am 23.12.2021 auf der Zugstrecke von Bayreuth Hbf nach Regensburg Hbf.", imageAsset: "BahnWebsiteQRCode")
            
            CardListItem(header: "RVV Tagesticket 2", icon: TransportMode.getIcon(transportMode: .all), description: "Gilt am 23.12.2021 im gesamten Raum Regensburg von 9:00 bis 3:00 des Folgetages.", imageAsset: "RVVWebsiteQRCode", bottomView: TicketShareView(peopleImageAssets: ["Anna", "Ian", "Bruce"], shareContent: "RVV Tagesticket 2"))
        }
        .listStyle(.plain)
    }
}

struct TicketViewPreviews: PreviewProvider
{
    static var previews:some View
    {
        TicketsView();
    }
}
