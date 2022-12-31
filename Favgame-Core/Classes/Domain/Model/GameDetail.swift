//
//  GameDetail.swift
//  Favgame
//
//  Created by deri indrawan on 28/12/22.
//

public struct GameDetail {
  let id: Int
  let name: String
  let released: String
  let backgroundImage: String
  let rating: Double
  let descriptionRaw: String
  let parentPlatforms: [ParentPlatform]
}

public struct ParentPlatform {
  let parentPlatform: Platform
}

public struct Platform {
  let id: Int
  let slug: String
}
