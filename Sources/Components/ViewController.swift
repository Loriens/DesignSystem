import UIKit

open class ViewController: UIViewController {
    open override func loadView() {
        let view = View()
        view.observeThemeUpdate()
        self.view = view
    }
}
