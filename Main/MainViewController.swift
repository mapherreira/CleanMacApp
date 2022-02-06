import Cocoa

class MainViewController: NSViewController {
	var gotoAddUserButton: NSButton!
	var gotoInfoButton: NSButton!
	public var addUser: (() -> Void)?
	public var info: (() -> Void)?
	
	override func loadView() {
		view = NSView()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configure()
	}
	
	func configure() {
		gotoAddUserButton = NSButton.defaultButton("Add User", NSRect(x: 10, y: 10, width: 80, height: 25))
		gotoAddUserButton.action = #selector(gotoAddUserButtonClicked)
		gotoInfoButton = NSButton.defaultButton("Info", NSRect(x: 90, y: 10, width: 80, height: 25))
		gotoInfoButton.action = #selector(gotoInfoButtonClicked)
		[gotoAddUserButton, gotoInfoButton].forEach(view.addSubview)
	}
	
	@objc private func gotoAddUserButtonClicked() {
		addUser?()
	}
	
	@objc private func gotoInfoButtonClicked() {
		info?()
	}
}
