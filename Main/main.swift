import AppKit

func application(delegate: AppDelegate) -> NSApplication {
	let app = NSApplication.shared
	NSApp.setActivationPolicy(.regular) // Show icon on Dock
	NSApp.activate(ignoringOtherApps: true) // Show window in front
	app.delegate = delegate
	app.applicationIconImage = NSImage(named: "appicon")
	return app
}

let delegate = AppDelegate()
let app = application(delegate: delegate)
app.run()


