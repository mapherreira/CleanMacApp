import Cocoa

protocol Coordinator {
	func start()
}


class MainCoordinator: Coordinator {
	func start() {
		setupMainWindow()
	}
	
	func setupMainWindow() {
		let controller = MainViewController()
		let window = NSWindow.makeWindow("All Users", minSize: NSSize(width: 500, height: 300), maxSize: NSSize(width: 800, height: 500))
		let windowController = NSWindowController.makeMainWindowController(MainWindowController(window: window), controller, "windowFrame")
		windowController.showWindow(window)
	}
}
