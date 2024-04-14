import ChildOne
import ChildTwo
import ChildThree

public class ParentOne {
    public static let shared = ParentOne()
    
    public func firstName() -> String {
        return "Adam"
    }
    
    public func children() -> [String] {
        return [
            ChildOne.shared.firstName(),
            ChildTwo.shared.firstName(),
            ChildThree.shared.firstName(),
        ]
    }
}
