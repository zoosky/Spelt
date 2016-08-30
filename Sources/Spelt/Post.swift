// TODO: should Post just be a Document which belongs to posts collection by default?
public final class Post: FileWithMetadata {
    public enum Error: ErrorType {
        case MissingDate
    }
    
    public let path: String
    public var destinationPath: String?
    public var contents: String
    public var metadata: Metadata
    
    public init(path: String, contents: String = "", metadata: Metadata) throws {
        self.path = path
        self.contents = contents
        self.metadata = metadata
        
        guard self.date != nil else {
            throw Error.MissingDate
        }
    }
}
