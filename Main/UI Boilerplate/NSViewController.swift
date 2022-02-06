import Cocoa

extension NSViewController {
	func configureFixedWidth(of control: NSView, with view: NSView, w: CGFloat, h: CGFloat) {
		control.translatesAutoresizingMaskIntoConstraints = false
		control.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		control.topAnchor.constraint(equalTo:view.topAnchor, constant: 60).isActive = true
		control.widthAnchor.constraint(equalToConstant: w).isActive = true
		control.heightAnchor.constraint(equalToConstant: h).isActive = true
	}
}

