import ProjectDescription

public extension TargetDependency {
    enum Framework {}
}

extension TargetDependency.Framework {
    static let RxSwift = TargetDependency.framework(path: "Framework/RxSwift.framework")
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
//        .Framework.RxSwift
//    ]
//)
