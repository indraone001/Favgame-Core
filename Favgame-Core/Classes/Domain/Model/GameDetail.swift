//
//  GameDetail.swift
//  Favgame
//
//  Created by deri indrawan on 28/12/22.
//

public struct GameDetail {
  public let id: Int
  public let name: String
  public let released: String
  public let backgroundImage: String
  public let rating: Double
  public let descriptionRaw: String
  public let parentPlatforms: [ParentPlatform]
}

public struct ParentPlatform {
  public let parentPlatform: Platform
}

public struct Platform {
  public let id: Int
  public let slug: String
}
