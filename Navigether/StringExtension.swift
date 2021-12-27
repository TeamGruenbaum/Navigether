import Foundation

extension String:Identifiable
{
    public var id: UUID
    {
        return UUID();
    }
}
