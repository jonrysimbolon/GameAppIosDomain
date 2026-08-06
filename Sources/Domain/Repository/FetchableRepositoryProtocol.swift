import Combine

public protocol FetchableRepository {
    associatedtype Item
    func getAll() -> AnyPublisher<[Item], Error>
}
