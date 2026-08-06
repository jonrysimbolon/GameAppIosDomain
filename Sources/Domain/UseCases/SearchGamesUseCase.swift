import Combine

public protocol SearchGamesUseCase {
    func execute(query: String) -> AnyPublisher<[Game], Error>
}

public final class SearchGamesUseCaseImpl: SearchGamesUseCase {

    private let repository: any GameRepositoryProtocol

    public init(repository: any GameRepositoryProtocol) {
        self.repository = repository
    }

    public func execute(query: String) -> AnyPublisher<[Game], Error> {
        repository.searchGames(query: query)
    }
}
