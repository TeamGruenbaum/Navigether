import SwiftUI

struct RouteInformationView:View
{
    var routeInformationIconNames:[String]
    var callBus:Bool
    
    var body:some View
    {
        VStack(alignment: .leading)
        {
            HStack
            {
                ForEach(routeInformationIconNames)
                {routeInformationIconName in
                    Image(systemName: routeInformationIconName)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            
            if(callBus)
            {
                Button("Reservieren", action:
                {
                
                })
                .foregroundColor(Color(UIColor(named: "Secondary")!))
            }
            Spacer()
            
            Button("Ticket kaufen", action:{})
            .foregroundColor(Color(UIColor(named: "Secondary")!))
        }
    }
}
