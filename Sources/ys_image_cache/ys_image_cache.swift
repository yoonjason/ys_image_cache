import Foundation
import ys_networking


public struct ys_image_cache {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}





public class test {
    public static let shared = test()
    
    
    
    public func getImage() {
        let net  = NetworkManager.shared
        net.test()
    }
    
    
    
}
