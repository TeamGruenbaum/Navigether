enum TransportMode
{
    case bus
    case train
    case all
    
    static func getIcon(transportMode:TransportMode)->String
    {
        switch transportMode
        {
            case .bus: return "bus";
            case .train: return "tram.fill";
            case .all: return "circle.circle";
        }
    }
}
