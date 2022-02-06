import Cocoa

class InfoViewController: NSViewController {
	override func loadView() {
		view = NSView(frame: NSRect(x: 0, y: 0, width: 300, height: 200))
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureDismissButton()
	}
	
	@objc func dismissController() {
		self.dismiss(self)
	}
	
	func configureDismissButton() {
		let dismissButton = NSButton.dismissButton()
		dismissButton.target = self
		dismissButton.action = #selector(dismissController)
		[dismissButton].forEach(view.addSubview)
		
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

