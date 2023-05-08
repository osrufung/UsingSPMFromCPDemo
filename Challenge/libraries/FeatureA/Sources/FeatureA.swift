import Foundation
import FeatureB

public struct FeatureA {
    public static let name = "FeatureA that depends on \(FeatureB.name)"
}
