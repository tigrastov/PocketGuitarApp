
import SwiftUI
let screen = UIScreen.main.bounds
@main
struct PocketGuitarApp: App {
    var body: some Scene {
        WindowGroup {
            KeySelectView()
        }
    }
}
