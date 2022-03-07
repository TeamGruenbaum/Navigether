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
                Button("Book", action:
                {
                    callBusAlertDialogBox.toggle()
                })
                .alert(isPresented: $callBusAlertDialogBox, content:
                {
                    
                    let firstButton = Alert.Button.default(Text("Book"))
                    let secondButton = Alert.Button.destructive(Text("Cancel"))
                     
                    return Alert(title: Text("Call Line Bus\nLine 15: 9:07 PM - 9:58 PM"), message: Text("Leierndorfer Str., Langquaid\nto\nRegensburg Central Station, Regensburg"), primaryButton: firstButton, secondaryButton: secondButton)
                })
                .foregroundColor(Color(UIColor(named: "Secondary")!))
                .buttonStyle(BorderlessButtonStyle())
            }
            Spacer()
            
            Button("Buy Ticket", action:{})
            .foregroundColor(Color(UIColor(named: "Secondary")!))
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}
