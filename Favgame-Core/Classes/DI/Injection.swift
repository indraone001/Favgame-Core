//
//  Injection.swift
//  Favgame
//
//  Created by deri indrawan on 27/12/22.
//
import Swinject
import RealmSwift

public class Injection {
  public init() {}
  public let container: Container = {
    let container = Container()
    // MARK: - Data Source
    container.register(GameRemoteDataSource.self) { _ in
      GameRemoteDataSource()
    }
    
    container.register(GameLocalDataSource.self) { _ in
      GameLocalDataSource(realm: try! Realm())
    }
    
    // MARK: - Repository
    container.register(GameRepository.self) { resolver in
      GameRepository(
        gameLocalDataSource: resolver.resolve(GameLocalDataSource.self)!,
        gameRemoteDataSource: resolver.resolve(GameRemoteDataSource.self)!
      )
    }
    
    // MARK: - Use Case
    container.register(GetListGameUseCase.self) { resolver in
      GetListGameUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    container.register(GetGameDetailUseCase.self) { resolver in
      GetGameDetailUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    container.register(SearchGameUseCase.self) { resolver in
      SearchGameUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    container.register(GetFavoritesGameUseCase.self) { resolver in
      GetFavoritesGameUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    container.register(InsertFavoriteGameUseCase.self) { resolver in
      InsertFavoriteGameUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    container.register(CheckIsFavoriteUseCase.self) { resolver in
      CheckIsFavoriteUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    container.register(DeleteFavoriteGameUseCase.self) { resolver in
      DeleteFavoriteGameUseCase(
        gameRepository: resolver.resolve(GameRepository.self)!
      )
    }
    
    return container
  }()
}
