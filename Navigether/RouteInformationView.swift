import SwiftUI

struct RouteInformationView:View
{
    var routeInformationIconNames:[String]
    var callBus:Bool
    @State var callBusAlertDialogBox=false
    
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
                    callBusAlertDialogBox.toggle()
                })
                .alert(isPresented: $callBusAlertDialogBox, content:
                {
                    
                    let firstButton = Alert.Button.default(Text("Reservieren"))
                    let secondButton = Alert.Button.destructive(Text("Abbrechen"))
                     
                    return Alert(title: Text("Anruflinienbus\nLinie 15: 21:07 - 21:58 Uhr"), message: Text("Leierndorfer Str., Langquaid\nnach\nRegensburg Hauptbahnhof, Regensburg"), primaryButton: firstButton, secondaryButton: secondButton)
                })
                .foregroundColor(Color(UIColor(named: "Secondary")!))
            }
            Spacer()
            
            Button("Ticket kaufen", action:{})
            .foregroundColor(Color(UIColor(named: "Secondary")!))
        }
    }
}
