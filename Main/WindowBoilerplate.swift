import Cocoa

extension NSWindow {
	static func makeWindow(_ title: String, minSize: NSSize, maxSize: NSSize) -> NSWindow {
		let window = NSWindow()
		window.title = title
		window.styleMask = NSWindow.StyleMask.defaultWindow
		window.titlebarAppearsTransparent = true
		window.titleVisibility = .visible
		window.styleMask.insert(NSWindow.StyleMask.fullSizeContentView)
		window.contentMinSize = minSize
		window.contentMaxSize = maxSize
		return window
	}
}

extension NSWindowController {
	static func makeMainWindowController(_ windowController: NSWindowController,_ controller: NSViewController,_ autoSaveName: String) -> NSWindowController {
		let windowController = windowController
		windowController.contentViewController = controller
		windowController.window?.delegate = windowController as? NSWindowDelegate
		windowController.window?.setFrameAutosaveName(autoSaveName)
		return windowController
	}
}

extension NSWindow.StyleMask {
	static var defaultWindow: NSWindow.StyleMask {
		var styleMask: NSWindow.StyleMask = .closable
		styleMask.formUnion(.titled)
		styleMask.formUnion(.resizable)
		styleMask.formUnion(.miniaturizable)
		return styleMask
	}
}
