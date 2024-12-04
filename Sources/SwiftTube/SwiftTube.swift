// The Swift Programming Language
// https://docs.swift.org/swift-book

internal import YouTubeDataOpenAPIClient
internal import OpenAPIRuntime
internal import YouTubeDataOpenAPITypes

public struct YouTubeClient {
  let client : Client
  
  init (transport: any ClientTransport) {
    client = try! .init(serverURL: Servers.Server1.url(), transport: transport)
    
  }
//  
//  func getStuff () {
//    client.youtube_period_videos_period_list(query:
//  }
}
