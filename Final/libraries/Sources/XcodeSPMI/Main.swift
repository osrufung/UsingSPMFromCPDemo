import ArgumentParser

@main
struct XcodeSPMI: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "XcodeSPMI",
        abstract: "Xcode Swift Package Manager Injector",
        version: "1.0.0",
        subcommands: [AddLocalPackageCommand.self, AddRemotePackageCommand.self]
    )
}
