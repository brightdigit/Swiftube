import Foundation
import Prch

/** Information about a channel that a user subscribed to. */
public struct ActivityContentDetailsSubscription: Model {
  /** The resourceId object contains information that identifies the resource that the user subscribed to. */
  public var resourceId: ResourceId?

  public init(resourceId: ResourceId? = nil) {
    self.resourceId = resourceId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    resourceId = try container.decodeIfPresent("resourceId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(resourceId, forKey: "resourceId")
  }
}
