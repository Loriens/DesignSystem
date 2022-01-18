public protocol Style {
    associatedtype Element: Component

    func perform(on element: Element)
}
