// Placeholder from rebuild summary
@main
struct MercuryApp: App {
    @StateObject private var state = MercuryState()
    var body: some Scene {
        WindowGroup {
            ObservatoryView()
                .environmentObject(state)
        }
    }
}