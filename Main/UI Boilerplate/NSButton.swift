import Cocoa

extension NSButton {
	class func defaultButton(_ title: String,_ frame: NSRect) -> NSButton {
		let button = NSButton()
		button.isBordered = true
		button.bezelStyle = .rounded
		button.focusRingType = .none
		button.frame = frame
		button.title = title
		return button
	}
}
