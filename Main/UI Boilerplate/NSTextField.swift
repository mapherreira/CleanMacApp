import Cocoa

extension NSTextField {
	
	/// Return an `NSTextField` configured exactly like one created by dragging a “Label” into a storyboard.
	class func label(_ text: String = "") -> NSTextField {
		let label = NSTextField()
		label.stringValue = text
		label.isEditable = false
		label.isSelectable = false
		label.textColor = .labelColor
		label.drawsBackground = false
		label.backgroundColor = .clear
		label.isBezeled = false
		label.alignment = .natural
		label.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: label.controlSize))//NSFont(name: "Verdana", size: 12)
		label.lineBreakMode = .byClipping
		label.cell?.isScrollable = true
		label.cell?.wraps = false
		label.canDrawConcurrently = true
		return label
	}
	
	/// Return an `NSTextField` configured exactly like one created by dragging a “Wrapping Label” into a storyboard.
	class func wrappingLabel() -> NSTextField {
		let label = label()
		label.lineBreakMode = .byWordWrapping
		label.cell?.isScrollable = false
		label.cell?.wraps = true
		return label
	}
	
}
