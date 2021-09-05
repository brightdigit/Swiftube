import Foundation
import Prch

public struct MembershipsDurationAtLevel: Model {
  /** Pricing level ID. */
  public var level: String?

  /** The date and time when the user became a continuous member for the given level. */
  public var memberSince: String?

  /** The cumulative time the user has been a member for the given level in complete months (the time is rounded down to the nearest integer). */
  public var memberTotalDurationMonths: Int?

  public init(level: String? = nil, memberSince: String? = nil, memberTotalDurationMonths: Int? = nil) {
    self.level = level
    self.memberSince = memberSince
    self.memberTotalDurationMonths = memberTotalDurationMonths
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    level = try container.decodeIfPresent("level")
    memberSince = try container.decodeIfPresent("memberSince")
    memberTotalDurationMonths = try container.decodeIfPresent("memberTotalDurationMonths")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(level, forKey: "level")
    try container.encodeIfPresent(memberSince, forKey: "memberSince")
    try container.encodeIfPresent(memberTotalDurationMonths, forKey: "memberTotalDurationMonths")
  }
}
