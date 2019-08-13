import UIKit

class ExampleViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    private let renderer = MarkdownRenderer(baseFont: .systemFont(ofSize: 16))
}

extension ExampleViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        textView.attributedText = renderer.render(text: textView.text)
    }
}
