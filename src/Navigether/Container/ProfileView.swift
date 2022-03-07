import SwiftUI

struct ProfileView:View
{
    var body:some View
    {
        NavigationView
        {
            VStack
            {
                List
                {
                    HStack
                    {
                        Spacer()
                        
                        Image("Bruce")
                        .resizable()
                        .frame(width: 130, height: 130)
                        
                        Spacer();
                    }
                    .listRowBackground(Rectangle().opacity(0))
                    .padding(.all, -10)
                    
                    
                    Section(header:
                        Label("About you", systemImage: "person.fill")
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(Color(UIColor(named: "Primary")!))
                        )
                    {
                        Text("Bruce Anderson")
                        Text("Born on 12/31/1990")
                        Text("Regensburg, Bavaria")
                        Text("120 Community-Points")
                        Text("Member since 10/14/2021")
                    }
                    .textCase(nil)
                
                    Section(header:
                        Label("Favorite topics", systemImage: "star.fill")
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(Color(UIColor(named: "Primary")!))
                        )
                    {
                        Text("Private railroad companies")
                        Text("Federal Network Agency")
                        Text("Mobile communications expansion")
                    }
                    .textCase(nil)
                    
                    Section(header:
                        Label("Friends", systemImage: "person.3.sequence.fill")
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(Color(UIColor(named: "Primary")!))
                        )
                    {
                        FriendView(peopleImageAsset: "Anna", name: "Anna Summer")
                        FriendView(peopleImageAsset: "Ian", name: "Ian White")
                    }
                    .textCase(nil)
                }
                .accentColor(Color(UIColor(named: "Primary")!))
            }
            .navigationBarTitle("Profile", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {}, label:{ Label("Settings", systemImage: "gearshape.fill").foregroundColor(Color(UIColor(named: "Secondary")!))}))
        }
    }
}
