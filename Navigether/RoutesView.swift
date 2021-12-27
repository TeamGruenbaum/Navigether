//
//  ContentView.swift
//  Navigether
//
//  Created by Steven Solleder on 22.12.21.
//

import SwiftUI

struct RoutesView:View
{
    @State var start:String="Leierndorfer Str., Langquaid";
    @State var end:String="Regensburg Hauptbahnhof, Regensburg";
    @State var date:Date=Date(timeIntervalSinceNow: 0);
    
    var body:some View
    {
        VStack(alignment: .leading, spacing: 0)
        {
            Image("LangquaidToRegensburgMap")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 50, x: 0, y: -15);
            
            Spacer();
            
            /*Divider()
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 20))*/
            
            Text("Start")
                .bold()
                .font(.title2)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 0))
            TextField("", text: $start)
                .textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 30, trailing: 20))
                
            
            Text("Ende")
                .bold()
                .font(.title2)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 0))
            TextField("", text: $end)
                .textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 20))
            
            HStack
            {
                Spacer()
                
                DatePicker("Zeit", selection: $date)
                    .labelsHidden()
                
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            
                
            
            HStack
            {
                Button(action: {}, label:
                    {
                        Label("Filter", systemImage: "line.3.horizontal.decrease.circle")
                            .frame(minWidth: 100)
                            .padding(.all, 5.0)
                    })
                    .buttonStyle(.bordered)
                    .accentColor(Color(UIColor(named: "Secondary")!))
                
                Spacer();
                
                
                
                Button(action:{}, label:
                    {
                        Label("Suchen", systemImage: "magnifyingglass")
                        .frame(minWidth: 100)
                        .padding(.all, 5.0)
                    }
                )
                .buttonStyle(.borderedProminent)
            }
            .padding(EdgeInsets(top: 0, leading: 40, bottom: 30, trailing: 40))
            .accentColor(Color(UIColor(named: "Primary")!))
            
            /*Divider()
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))*/
            
            Spacer();
        }
    }
}

struct RoutesViewPreviews: PreviewProvider
{
    static var previews:some View{
        Group {
            RoutesView()
        }
    }
}
