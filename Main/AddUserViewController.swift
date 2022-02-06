import Cocoa

class AddUserViewController: NSViewController {
	let titleLabel = NSTextField.label()
	let dismissButton = NSButton.dismissButton()
	
	override func loadView() {
		view = NSView(frame: NSRect(x: 0, y: 0, width: 300, height: 200))
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
	}
	
	@objc func dismissController() {
		self.dismiss(self)
	}
	
	func setup() {
		titleLabel.stringValue = "Add User Controller"
		titleLabel.alignment = .center
		dismissButton.target = self
		dismissButton.action = #selector(dismissController)
		addSubviews()
		addConstraints()
	}
	
	func addSubviews() {
		[titleLabel, dismissButton].forEach(view.addSubview)
	}
	
	func addConstraints() {
		titleLabel.anchor(
			top: view.topAnchor,
			leading: view.leadingAnchor,
			bottom: nil,
			trailing: view.trailingAnchor,
			padding: .init(top: 30, left: 10, bottom: 0, right: 10)
		)
		
		dismissButton.anchor(
			top: view.topAnchor,
			leading: view.leadingAnchor,
			bottom: nil,
			trailing: nil,
			padding: .init(top: 10, left: 10, bottom: 0, right: 0) ,
			size: NSSize(width: 15, height: 15)
		)
	}
}

