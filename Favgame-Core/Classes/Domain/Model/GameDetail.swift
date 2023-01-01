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
  
  public init(
    id: Int,
    name: String,
    released: String,
    backgroundImage: String,
    rating: Double,
    descriptionRaw: String,
    parentPlatforms: [ParentPlatform]
  ) {
    self.id = id
    self.name = name
    self.released = released
    self.backgroundImage = backgroundImage
    self.rating = rating
    self.descriptionRaw = descriptionRaw
    self.parentPlatforms = parentPlatforms
  }
}

public struct ParentPlatform {
  public let parentPlatform: Platform
  
  public init(parentPlatform: Platform) {
    self.parentPlatform = parentPlatform
  }
}

public struct Platform {
  public let id: Int
  public let slug: String
  
  public init(id: Int, slug: String) {
    self.id = id
    self.slug = slug
  }
}
