import SwiftUI

struct TicketsView:View
{
    var body:some View
    {
        NavigationView
        {
            List
            {
                CardListItem<Never>(header: "VGN Ticket", icon: TransportMode.getIcon(transportMode: .bus), description: "Valid once on 12/23/2021 on the bus route from Feustelstr. to Bayreuth Main Station.", imageAsset: "VGNWebsiteQRCode")
                    
                CardListItem<Never>(header: "DB Ticket Flex", icon: TransportMode.getIcon(transportMode: .train), description: "Valid once on 12/23/2021 on the train route from Bayreuth Main Station to Regensburg Main Station. ", imageAsset: "DBWebsiteQRCode")
                
                CardListItem(header: "RVV Day Ticket 2", icon: TransportMode.getIcon(transportMode: .all), description: "Valid on 12/23/2021 in the entire Regensburg area from 9:00 AM to 3:00 AM the following day.", imageAsset: "RVVWebsiteQRCode", bottomView: TicketShareView(peopleImageAssets: ["Anna", "Ian", "Bruce"], shareContent: "RVV Day Ticket 2"))
            }
            .listStyle(.plain)
            .navigationBarTitle("Tickets", displayMode: .inline)
        }
    }
}
