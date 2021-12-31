import SwiftUI

struct FriendView:View
{
    var peopleImageAsset:String
    var name:String
    
    var body:some View
    {
        HStack(alignment: .center)
        {
            Image(peopleImageAsset)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.trailing, 5)
            
            Text(name)
        }
    }
}

