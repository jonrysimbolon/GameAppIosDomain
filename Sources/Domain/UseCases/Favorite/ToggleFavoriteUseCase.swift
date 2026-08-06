public protocol ToggleFavoriteUseCase {

    func execute(game: Game) -> Bool
}

public final class ToggleFavoriteUseCaseImpl: ToggleFavoriteUseCase {

    private let repository: any FavoriteRepositoryProtocol

    public init(repository: any FavoriteRepositoryProtocol) {
        self.repository = repository
    }

    public func execute(game: Game) -> Bool {
        repository.toggleFavorite(game)
    }
}
