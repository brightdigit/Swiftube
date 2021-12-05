import Foundation
import Prch

/** Branding properties for the channel view. */
public struct ChannelSettings: Model {
  /** The country of the channel. */
  public var country: String?

  public var defaultLanguage: String?

  /** Which content tab users should see when viewing the channel. */
  public var defaultTab: String?

  /** Specifies the channel description. */
  public var description: String?

  /** Title for the featured channels tab. */
  public var featuredChannelsTitle: String?

  /** The list of featured channels. */
  public var featuredChannelsUrls: [String]?

  /** Lists keywords associated with the channel, comma-separated. */
  public var keywords: String?

  /** Whether user-submitted comments left on the channel page need to be approved by the channel owner to be publicly visible. */
  public var moderateComments: Bool?

  /** A prominent color that can be rendered on this channel page. */
  public var profileColor: String?

  /** Whether the tab to browse the videos should be displayed. */
  public var showBrowseView: Bool?

  /** Whether related channels should be proposed. */
  public var showRelatedChannels: Bool?

  /** Specifies the channel title. */
  public var title: String?

  /** The ID for a Google Analytics account to track and measure traffic to the channels. */
  public var trackingAnalyticsAccountId: String?

  /** The trailer of the channel, for users that are not subscribers. */
  public var unsubscribedTrailer: String?

  public init(country: String? = nil, defaultLanguage: String? = nil, defaultTab: String? = nil, description: String? = nil, featuredChannelsTitle: String? = nil, featuredChannelsUrls: [String]? = nil, keywords: String? = nil, moderateComments: Bool? = nil, profileColor: String? = nil, showBrowseView: Bool? = nil, showRelatedChannels: Bool? = nil, title: String? = nil, trackingAnalyticsAccountId: String? = nil, unsubscribedTrailer: String? = nil) {
    self.country = country
    self.defaultLanguage = defaultLanguage
    self.defaultTab = defaultTab
    self.description = description
    self.featuredChannelsTitle = featuredChannelsTitle
    self.featuredChannelsUrls = featuredChannelsUrls
    self.keywords = keywords
    self.moderateComments = moderateComments
    self.profileColor = profileColor
    self.showBrowseView = showBrowseView
    self.showRelatedChannels = showRelatedChannels
    self.title = title
    self.trackingAnalyticsAccountId = trackingAnalyticsAccountId
    self.unsubscribedTrailer = unsubscribedTrailer
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    country = try container.decodeIfPresent("country")
    defaultLanguage = try container.decodeIfPresent("defaultLanguage")
    defaultTab = try container.decodeIfPresent("defaultTab")
    description = try container.decodeIfPresent("description")
    featuredChannelsTitle = try container.decodeIfPresent("featuredChannelsTitle")
    featuredChannelsUrls = try container.decodeArrayIfPresent("featuredChannelsUrls")
    keywords = try container.decodeIfPresent("keywords")
    moderateComments = try container.decodeIfPresent("moderateComments")
    profileColor = try container.decodeIfPresent("profileColor")
    showBrowseView = try container.decodeIfPresent("showBrowseView")
    showRelatedChannels = try container.decodeIfPresent("showRelatedChannels")
    title = try container.decodeIfPresent("title")
    trackingAnalyticsAccountId = try container.decodeIfPresent("trackingAnalyticsAccountId")
    unsubscribedTrailer = try container.decodeIfPresent("unsubscribedTrailer")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(country, forKey: "country")
    try container.encodeIfPresent(defaultLanguage, forKey: "defaultLanguage")
    try container.encodeIfPresent(defaultTab, forKey: "defaultTab")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(featuredChannelsTitle, forKey: "featuredChannelsTitle")
    try container.encodeIfPresent(featuredChannelsUrls, forKey: "featuredChannelsUrls")
    try container.encodeIfPresent(keywords, forKey: "keywords")
    try container.encodeIfPresent(moderateComments, forKey: "moderateComments")
    try container.encodeIfPresent(profileColor, forKey: "profileColor")
    try container.encodeIfPresent(showBrowseView, forKey: "showBrowseView")
    try container.encodeIfPresent(showRelatedChannels, forKey: "showRelatedChannels")
    try container.encodeIfPresent(title, forKey: "title")
    try container.encodeIfPresent(trackingAnalyticsAccountId, forKey: "trackingAnalyticsAccountId")
    try container.encodeIfPresent(unsubscribedTrailer, forKey: "unsubscribedTrailer")
  }
}