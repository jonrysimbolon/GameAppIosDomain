import Combine

public protocol GameRepositoryProtocol: FetchableRepositoryProtocol where Item == Game {
    func getGames(page: Int) -> AnyPublisher<[Game], Error>
    func searchGames(query: String) -> AnyPublisher<[Game], Error>
    func getGameDetail(id: Int) -> AnyPublisher<Game, Error>
}

public extension GameRepositoryProtocol {
    func getAll() -> AnyPublisher<[Game], Error> {
        getGames(page: 1)
    }
}
