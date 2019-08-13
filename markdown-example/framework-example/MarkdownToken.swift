import Foundation

enum MarkdownToken {
    case text(String)
    case leftDelimiter(UnicodeScalar)
    case rightDelimiter(UnicodeScalar)
}

extension MarkdownToken: Equatable {
    static func == (lhs: MarkdownToken, rhs: MarkdownToken) -> Bool {
        switch (lhs, rhs) {
        case let (.text(lvalue), .text(rvalue)):
            return lvalue == rvalue
        case let (.leftDelimiter(lvalue), .leftDelimiter(rvalue)):
            return lvalue == rvalue
        case let (.rightDelimiter(lvalue), .rightDelimiter(rvalue)):
            return lvalue == rvalue
        default:
            return false
        }
    }
}

extension MarkdownToken: CustomStringConvertible {
    var description: String {
        switch self {
        case .text(let value):
            return value
        case .leftDelimiter(let value):
            return String(value)
        case .rightDelimiter(let value):
            return String(value)
        }
    }
}

extension MarkdownToken: CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .text(let value):
            return "text(\(value))"
        case .leftDelimiter(let value):
            return "leftDelimiter(\(value))"
        case .rightDelimiter(let value):
            return "rightDelimiter(\(value))"
        }
    }
}
