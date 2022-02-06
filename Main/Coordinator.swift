import Cocoa

protocol Coordinator {
	func start()
}

class MainCoordinator: Coordinator {
	private let addUserFactory: () -> AddUserViewController = {
		return AddUserViewController()
	}
	
	private let infoFactory: () -> InfoViewController = {
		return InfoViewController()
	}
	
	func start() {
		setupMainWindow()
	}
	
	func setupMainWindow() {
		let mainController = MainViewController()
		let mainRouter = MainViewControllerRouter(mainController ,addUserFactory, infoFactory)
		mainController.addUser = mainRouter.presentAddUser
		mainController.info = mainRouter.presentInfo
		let window = NSWindow.makeWindow("All Users", minSize: NSSize(width: 500, height: 300), maxSize: NSSize(width: 800, height: 500))
		let windowController = NSWindowController.makeMainWindowController(MainWindowController(window: window), mainController, "windowFrame")
		windowController.showWindow(window)
	}
}
