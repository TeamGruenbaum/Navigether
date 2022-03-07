import Foundation
import SwiftUI
import MapKit

struct Location: Identifiable
{
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let tint: Color
}
