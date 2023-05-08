import XcodeProj
import PathKit
import ArgumentParser

struct AddRemotePackageCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "addRemote",
        abstract: "Injects a remote SPM Package"
    )
    
    @Option(help: "The Pod project directory.")
    var projectPath: String

    @Option(help: "The SwiftPM package URL.")
    var spmURL: String

    @Option(help: "The product from that package to be injected.")
    var product: String
    
    @Option(help: "The exact version to be used.")
    var version: String

    @Option(help: "The target to be configured with that dependency")
    var targetName: String

    func run() throws {
        let projectPath = Path(projectPath)
        let xcodeproject = try XcodeProj(path: projectPath)
        let pbxproj = xcodeproject.pbxproj
        let project = pbxproj.projects.first
        _ = try project?.addSwiftPackage(repositoryURL: spmURL, productName: product, versionRequirement: .exact(version), targetName: targetName)
        try xcodeproject.write(path: projectPath)}
}
