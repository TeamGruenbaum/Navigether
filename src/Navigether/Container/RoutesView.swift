import SwiftUI
import MapKit

struct RoutesView:View
{
    @State var start:String="Leierndorfer Str., Langquaid";
    @State var end:String="Regensburg Central Station, Regensburg";
    @State var date:Date=Date(timeIntervalSinceNow: 0);
    @State var routeResultsActive:Bool=false;
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.89, longitude: 12.105), span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))
    let locations = [
        Location(coordinate: CLLocationCoordinate2D(latitude: 48.824728, longitude: 12.057196), tint: Color(UIColor(named: "Primary")!)),
        Location(coordinate: CLLocationCoordinate2D(latitude: 49.011790, longitude: 12.098670), tint: Color(UIColor(named: "Secondary")!))
    ]
    
    
    var body:some View
    {
        NavigationView
        {
            VStack(alignment: .leading, spacing: 0)
            {
                Map(coordinateRegion: $region, annotationItems: locations)
                {location in
                    MapMarker(coordinate: location.coordinate, tint: location.tint)
                }
                .edgesIgnoringSafeArea(.all)
                
                Spacer();
                
                Text("Start")
                    .bold()
                    .font(.title2)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 0))
                TextField("", text: $start)
                    .textFieldStyle(.roundedBorder)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 30, trailing: 20))
                    
                
                Text("Destination")
                    .bold()
                    .font(.title2)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 0))
                TextField("", text: $end)
                    .textFieldStyle(.roundedBorder)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 20))
                
                HStack
                {
                    Spacer()
                    
                    DatePicker("Time", selection: $date)
                        .labelsHidden()
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                
                    
                
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
                    
                    
                    NavigationLink(destination: RoutesResultView().navigationBarTitle("Routes",displayMode: .inline),
                    isActive: $routeResultsActive,
                    label:
                    {
                        Label("Search", systemImage: "magnifyingglass")
                        .frame(minWidth: 100)
                        .padding(.all, 5.0)
                    })
                    .buttonStyle(.borderedProminent)
                }
                .padding(EdgeInsets(top: 0, leading: 40, bottom: 30, trailing: 40))
                .accentColor(Color(UIColor(named: "Primary")!))
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
}
