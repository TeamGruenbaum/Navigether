enum TransportMode
{
    case bus
    case callbus
    case train
    case all
    
    static func getIcon(transportMode:TransportMode)->String
    {
        switch transportMode
        {
            case .bus: return "bus.fill";
            case .callbus: return "phone.fill";
            case .train: return "tram.fill";
            case .all: return "circle.circle";
        }
    }
}
