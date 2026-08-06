import Combine

public protocol FetchableRepositoryProtocol {
    associatedtype Item
    func getAll() -> AnyPublisher<[Item], Error>
}
