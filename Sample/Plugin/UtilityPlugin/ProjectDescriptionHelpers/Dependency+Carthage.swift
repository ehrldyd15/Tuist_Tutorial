import ProjectDescription

public extension TargetDependency {
    enum Carthage {}
}

extension TargetDependency.Carthage {
    static let RxSwift = TargetDependency.external(name: "RxSwift")
}

// ✅ 실제 사용

//import ProjectDescription
//import ProjectDescriptionHelpers
//
//let project = Project.makeModule(
//    name: "ThirdPartyLib",
//    product: .framework,
//    packages: [],
//    dependencies: [
//        .Carthage.RxSwift
//    ]
//)
