import UIKit

public protocol Component: UIView {
    var theme: Theme { get set }

    func updateUI()
    func observeThemeUpdate()
}

public extension Component {
    func observeThemeUpdate() {
        NotificationCenter.default.addObserver(forName: .themeDidChange, object: nil, queue: .main) { [weak self] _ in
            self?.theme = ThemeManager.shared.theme
            self?.updateUI()
        }
    }
}
