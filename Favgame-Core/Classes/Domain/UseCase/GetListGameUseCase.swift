//
//  GetListGameUseCase.swift
//  Favgame
//
//  Created by deri indrawan on 27/12/22.
//

import Combine

public class GetListGameUseCase {
  private let gameRepository: GameRepositoryProtocol
  
  required init(gameRepository: GameRepositoryProtocol) {
    self.gameRepository = gameRepository
  }
  
  public func execute() -> AnyPublisher<[Game], Error> {
    return gameRepository.getGameList()
  }
  
}
