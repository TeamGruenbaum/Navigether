import SwiftUI

struct TicketsView:View
{
    var body:some View
    {
        List
        {
            CardListItem(header: "VGN Einzelticket", description: "Gilt einmalig am 23.12.2021 auf der Busstrecke von Feustelstr. nach Bayreuth Hbf.", imageAsset: "VGNWebsiteQRCode", transportMode: .bus, isGroupTicket: false, peopleImageAssets: [])
            
            CardListItem(header: "DB Ticket Flex", description: "Gilt einmalig am 23.12.2021 auf der Zugstrecke von Bayreuth Hbf nach Regensburg Hbf.", imageAsset: "BahnWebsiteQRCode", transportMode: .train, isGroupTicket: false, peopleImageAssets: [])
            
            CardListItem(header: "RVV Tagesticket 2", description: "Gilt am 23.12.2021 im gesamten Raum Regensburg von 9:00 bis 3:00 des Folgetages.", imageAsset: "RVVWebsiteQRCode", transportMode: .all, isGroupTicket: true, peopleImageAssets: ["Anna", "Ian", "Bruce"])
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
