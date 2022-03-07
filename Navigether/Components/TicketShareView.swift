import SwiftUI

struct TicketShareView:View
{
    var peopleImageAssets:[String]
    var shareContent:String
    
    var body:some View
    {
        HStack(alignment: .center)
        {
            ForEach(peopleImageAssets)
            {peopleImageAsset in
                
                Image(peopleImageAsset)
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            Button(action:
            {
                UIApplication.shared.windows.first?.rootViewController?.present(UIActivityViewController(activityItems: [shareContent], applicationActivities: nil), animated: true, completion: nil)
            },
            label:
            {
                Label("", systemImage: "square.and.arrow.up")
                .labelStyle(.titleAndIcon)
                .foregroundColor(Color(UIColor(named: "Secondary")!))
                
            })
            .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}
