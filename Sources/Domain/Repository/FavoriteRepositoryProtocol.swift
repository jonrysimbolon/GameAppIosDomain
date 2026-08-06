import Combine

public protocol FavoriteRepositoryProtocol: FetchableRepository where Item == Game {
    func isFavorite(id: Int) -> Bool
    func toggleFavorite(_ game: Game) -> Bool
}

public extension FavoriteRepositoryProtocol {
    func getAll() -> AnyPublisher<[Game], Error> {
        getFavorites()
    }
    func getFavorites() -> AnyPublisher<[Game], Error> {
        getAll()
    }
}
