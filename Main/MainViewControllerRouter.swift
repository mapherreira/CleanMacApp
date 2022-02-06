import Foundation

public final class MainViewControllerRouter {
	private let addUserFactory: () ->AddUserViewController
	private let infoFactory: () -> InfoViewController
	private let main: MainViewController

	init(
		_ main: MainViewController,
		_ addUserFactory: @escaping () -> AddUserViewController ,
		_ infoFactory: @escaping () -> InfoViewController
	) {
		self.addUserFactory = addUserFactory
		self.infoFactory = infoFactory
		self.main = main
	}

	public func presentAddUser() {
		main.presentAsSheet(addUserFactory())
	}

	public func presentInfo() {
		main.presentAsSheet(infoFactory())
	}
}

