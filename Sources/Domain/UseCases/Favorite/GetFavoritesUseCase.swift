import Combine

public protocol GetFavoritesUseCase {

    func execute() -> AnyPublisher<[Game], Error>
}

public final class GetFavoritesUseCaseImpl: GetFavoritesUseCase {

    private let repository: any FavoriteRepositoryProtocol

    public init(repository: any FavoriteRepositoryProtocol) {
        self.repository = repository
    }

    public func execute() -> AnyPublisher<[Game], Error> {
        repository.getFavorites()
    }
}
