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
		let btn = NSButton()
		btn.isBordered = false
		btn.image = NSImage(named: "NSStopProgressFreestandingTemplate")
		btn.imageScaling = .scaleProportionallyUpOrDown
		btn.wantsLayer = true
		btn.bezelStyle = .inline
		btn.layer?.cornerRadius = 10
		btn.focusRingType = .none
		btn.layer?.backgroundColor = .white
		return btn
	}
}
