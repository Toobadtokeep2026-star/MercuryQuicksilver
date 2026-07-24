import SwiftUI

@main
struct MercuryApp: App {
    @StateObject private var appState = MercuryState()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(appState)
                .preferredColorScheme(.dark)
                .task {
                    await appState.boot()
                }
        }
    }
}
