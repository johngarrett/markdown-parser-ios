import Foundation

/// MarkdownNode - text between two delimiters
public enum MarkdownNode {
    case text(String)
    case strong([MarkdownNode])
    case emphasis([MarkdownNode])
    case strikethrough([MarkdownNode])
}

extension MarkdownNode {
    init?(delimiter: UnicodeScalar, children: [MarkdownNode]) {
        switch delimiter {
        case "*":
            self = .strong(children)
        case "_":
            self = .emphasis(children)
        case "~":
            self = .strikethrough(children)
        default:
            return nil
        }
    }
}
