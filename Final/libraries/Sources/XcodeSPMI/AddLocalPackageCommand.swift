import XcodeProj
import PathKit
import ArgumentParser

struct AddLocalPackageCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "addLocal",
        abstract: "Injects a local SPM Package"
    )
    
    @Option(help: "The Pod project directory.")
    var projectPath: String

    @Option(help: "The SwiftPM package directory.")
    var spmPath: String

    @Option(help: "The product from that package to be injected.")
    var product: String

    @Option(help: "The target to be configured with that dependency")
    var targetName: String

    func run() throws {
        let projectPath = Path(projectPath)
        let spmPath = Path(spmPath)
        let xcodeproject = try XcodeProj(path: projectPath)
        let pbxproj = xcodeproject.pbxproj
        let project = pbxproj.projects.first
        _ = try project?.addLocalSwiftPackage(path: spmPath, productName: product, targetName: targetName)
        try xcodeproject.write(path: projectPath)}
}
