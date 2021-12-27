import SwiftUI

struct CardListItem: View
{
    var header: String
    var description: String
    var imageAsset: String
    var transportMode:TransportMode
    var isGroupTicket: Bool
    var peopleImageAssets:[String]
    

    var body: some View
    {
        ZStack
        {
            Color.white
                
            VStack(alignment: .leading, spacing: 0)
            {
                HStack
                {
                    VStack(alignment: .leading, spacing: 0)
                    {
                        Label(header, systemImage: TransportMode.getIcon(transportMode: transportMode))
                            .labelStyle(.titleAndIcon)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(Color(UIColor(named: "Primary")!))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        
                        Text(description)
                            .font(.caption)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        
                        if(isGroupTicket)
                        {
                            Spacer()
                            
                            HStack(alignment: .center)
                            {
                                Button(action:
                                {
                                    UIApplication.shared.windows.first?.rootViewController?.present(UIActivityViewController(activityItems: [header], applicationActivities: nil), animated: true, completion: nil)
                                },
                                label:
                                {
                                    Label("Teilen", systemImage: "square.and.arrow.up")
                                    .labelStyle(.titleAndIcon)
                                    .foregroundColor(Color(UIColor(named: "Secondary")!))
                                    
                                })
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                                
                                
                                ForEach(peopleImageAssets)
                                {peopleImageAsset in
                                    
                                    Image(peopleImageAsset)
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Image(imageAsset)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
            }
            .padding(.all, 20)
            
        }
        .listRowSeparator(.hidden)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
    
}
