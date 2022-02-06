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
	
	class func dismissButton() -> NSButton {
		let button = NSButton()
		button.isBordered = false
		button.image = NSImage(named: "NSStopProgressFreestandingTemplate")
		button.imageScaling = .scaleProportionallyUpOrDown
		button.wantsLayer = true
		button.bezelStyle = .inline
		button.layer?.cornerRadius = 10
		button.focusRingType = .none
		button.layer?.backgroundColor = .white
		return button
	}
}
