import SwiftUI

struct CommunityView:View
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
                        Label("Über dich", systemImage: "person.fill")
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(Color(UIColor(named: "Primary")!))
                        )
                    {
                        Text("Bruce Anderson")
                        Text("31.12.1990")
                        Text("Langquaid, Bayern")
                        Text("120 Community-Punkte")
                        Text("Mitglied seit 14.10.2021")
                    }
                    .textCase(nil)
                
                    Section(header:
                        Label("Lieblingsthemen", systemImage: "star.fill")
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(Color(UIColor(named: "Primary")!))
                        )
                    {
                        Text("Private Bahngesellschaften")
                        Text("Bundesnetzagentur")
                        Text("Mobilfunkausbau")
                    }
                    .textCase(nil)
                    
                    Section(header:
                        Label("Freunde", systemImage: "person.3.sequence.fill")
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(Color(UIColor(named: "Primary")!))
                        )
                    {
                        FriendView(peopleImageAsset: "Anna", name: "Anna Summer")
                        FriendView(peopleImageAsset: "Ian", name: "Ian Weiss")
                    }
                    .textCase(nil)
                }
                .accentColor(Color(UIColor(named: "Primary")!))
            }
            .navigationBarTitle("Profil", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {}, label:{ Label("Einstellungen", systemImage: "gearshape.fill").foregroundColor(Color(UIColor(named: "Secondary")!))}))
        }
    }
}

struct CommunityViewPreviews: PreviewProvider
{
    static var previews:some View
    {
        CommunityView();
    }
}
