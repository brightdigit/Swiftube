//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import Prch

public struct LiveStreamConfigurationIssue: Model {

    /** How severe this issue is to the stream. */
    public enum Severity: String, Codable, Equatable, CaseIterable {
        case info = "info"
        case warning = "warning"
        case error = "error"
    }

    /** The kind of error happening. */
    public enum `Type`: String, Codable, Equatable, CaseIterable {
        case gopSizeOver = "gopSizeOver"
        case gopSizeLong = "gopSizeLong"
        case gopSizeShort = "gopSizeShort"
        case openGop = "openGop"
        case badContainer = "badContainer"
        case audioBitrateHigh = "audioBitrateHigh"
        case audioBitrateLow = "audioBitrateLow"
        case audioSampleRate = "audioSampleRate"
        case bitrateHigh = "bitrateHigh"
        case bitrateLow = "bitrateLow"
        case audioCodec = "audioCodec"
        case videoCodec = "videoCodec"
        case noAudioStream = "noAudioStream"
        case noVideoStream = "noVideoStream"
        case multipleVideoStreams = "multipleVideoStreams"
        case multipleAudioStreams = "multipleAudioStreams"
        case audioTooManyChannels = "audioTooManyChannels"
        case interlacedVideo = "interlacedVideo"
        case frameRateHigh = "frameRateHigh"
        case resolutionMismatch = "resolutionMismatch"
        case videoCodecMismatch = "videoCodecMismatch"
        case videoInterlaceMismatch = "videoInterlaceMismatch"
        case videoProfileMismatch = "videoProfileMismatch"
        case videoBitrateMismatch = "videoBitrateMismatch"
        case framerateMismatch = "framerateMismatch"
        case gopMismatch = "gopMismatch"
        case audioSampleRateMismatch = "audioSampleRateMismatch"
        case audioStereoMismatch = "audioStereoMismatch"
        case audioCodecMismatch = "audioCodecMismatch"
        case audioBitrateMismatch = "audioBitrateMismatch"
        case videoResolutionSuboptimal = "videoResolutionSuboptimal"
        case videoResolutionUnsupported = "videoResolutionUnsupported"
        case videoIngestionStarved = "videoIngestionStarved"
        case videoIngestionFasterThanRealtime = "videoIngestionFasterThanRealtime"
    }

    /** The long-form description of the issue and how to resolve it. */
    public var description: String?

    /** The short-form reason for this issue. */
    public var reason: String?

    /** How severe this issue is to the stream. */
    public var severity: Severity?

    /** The kind of error happening. */
    public var type: `Type`?

    public init(description: String? = nil, reason: String? = nil, severity: Severity? = nil, type: `Type`? = nil) {
        self.description = description
        self.reason = reason
        self.severity = severity
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        reason = try container.decodeIfPresent("reason")
        severity = try container.decodeIfPresent("severity")
        type = try container.decodeIfPresent("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(reason, forKey: "reason")
        try container.encodeIfPresent(severity, forKey: "severity")
        try container.encodeIfPresent(type, forKey: "type")
    }

}
