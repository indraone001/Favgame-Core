//
//  Game.swift
//  Favgame
//
//  Created by deri indrawan on 28/12/22.
//

public struct Game {
  public var id: Int
  public var name: String
  public var released: String
  public var backgroundImage: String
  public var rating: Double
  
  public init(
    id: Int,
    name: String,
    released: String,
    backgroundImage: String,
    rating: Double
  ) {
    self.id = id
    self.name = name
    self.released = released
    self.backgroundImage = backgroundImage
    self.rating = rating
  }
}
