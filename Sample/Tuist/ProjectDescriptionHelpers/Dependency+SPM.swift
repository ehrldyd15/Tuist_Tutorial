import ProjectDescription

// MARK: Tuist SPM

import ProjectDescription

public extension TargetDependency {
    enum SPM {}
}

public extension TargetDependency.SPM {
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let RxRelay = TargetDependency.external(name: "RxRelay")
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
//        .SPM.RxSwift,
//        .SPM.RxCocoa,
//        .SPM.RxRelay
//    ]
//)


// MARK: Xcode native SPM

//public extension TargetDependency {
//    enum SPM {}
//}
//
//public extension Package {
//    static let Rx = Package.remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0"))
//}
//
//public extension TargetDependency.SPM {
//    static let RxSwift = TargetDependency.package(product: "RxSwift")
//    static let RxCocoa = TargetDependency.package(product: "RxCocoa")
//    static let RxRelay = TargetDependency.package(product: "RxRelay")
//}

// ✅ 실제 사용

//import ProjectDescription
//import ProjectDescriptionHelpers
//
//let project = Project.makeModule(
//    name: "ThirdPartyLib",
//    product: .framework,
//    packages: [
//        .Rx
//    ],
//    dependencies: [
//        .SPM.RxSwift,
//        .SPM.RxCocoa,
//        .SPM.RxRelay
//    ]
//)
