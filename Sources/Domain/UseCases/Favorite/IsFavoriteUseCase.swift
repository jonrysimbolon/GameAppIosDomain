public protocol IsFavoriteUseCase {

    func execute(id: Int) -> Bool
}

public final class IsFavoriteUseCaseImpl: IsFavoriteUseCase {

    private let repository: any FavoriteRepositoryProtocol

    public init(repository: any FavoriteRepositoryProtocol) {
        self.repository = repository
    }

    public func execute(id: Int) -> Bool {
        repository.isFavorite(id: id)
    }
}
