import Combine

public protocol FavoriteRepositoryProtocol: FetchableRepositoryProtocol where Item == Game {
    func getFavorites() -> AnyPublisher<[Game], Error>
    func isFavorite(id: Int) -> Bool
    func toggleFavorite(_ game: Game) -> Bool
}

public extension FavoriteRepositoryProtocol {
    func getAll() -> AnyPublisher<[Game], Error> {
        getFavorites()
    }
}
