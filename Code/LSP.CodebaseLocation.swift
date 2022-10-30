import Foundation
import SwiftLSP

public extension LSP {

    /**
     Demarcates a codebase in the file system: by location, language and source file types
     */
    struct CodebaseLocation: Codable, Equatable {
        
        public init(folder: URL,
                    languageName: String,
                    codeFileEndings: [String]) {
            self.folder = folder
            self.languageName = languageName
            self.codeFileEndings = codeFileEndings
        }
        
        public var folder: URL
        public let languageName: String
        public let codeFileEndings: [String]
    }
}