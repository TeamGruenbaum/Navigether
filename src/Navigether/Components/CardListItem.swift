import SwiftUI

struct CardListItem<V:View>: View
{
    var header: String
    var icon:String?
    var description: String
    var imageAsset: String?
    var bottomView:V?
    

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
                        Label(header, systemImage: icon ?? "")
                            .labelStyle(.titleAndIcon)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(Color(UIColor(named: "Primary")!))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        
                        Text(description)
                            .font(.caption)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        
                        if(bottomView != nil)
                        {
                            Spacer()
                            
                            bottomView
                        }
                    }
                    
                    Spacer()
                    
                    if(imageAsset != nil)
                    {
                        Image(imageAsset!)
                            .resizable()
                            .frame(width: 120, height: 120)
                    }
                }
            }
            .padding(.all, 20)
            
        }
        .listRowSeparator(.hidden)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
    
}
