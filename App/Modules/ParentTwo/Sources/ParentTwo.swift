import ChildOne
import ChildTwo
import ChildThree

public class ParentTwo {
    public static let shared = ParentTwo()
    
    public func firstName() -> String {
        return "Eve"
    }
    
    public func children() -> [String] {
        return [
            ChildOne.shared.firstName(),
            ChildTwo.shared.firstName(),
            ChildThree.shared.firstName(),
        ]
    }
}
