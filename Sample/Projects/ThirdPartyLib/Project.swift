import ProjectDescription
import ProjectDescriptionHelpers


// MARK: Swift Package Manager

// Tuist의 Dependencies에서 SwiftPackageManager를 사용하는 방법이다.
// Xcode의 SPM은 Package를 직접 사용하는데, Tuist는 Package를 resolve하고 framework로 구성해서 쓰는 방식이다.
// Dependencies의 SPM에 Package를 추가(Local 또는 Remote) 하고 dependencies에서 .external로 등록한다.

// 경로 -> Tuist/Dependencies.swift에 파일이 위치 해 있어야 작동한다.

// ✅ [Dependencies.swift]
//import ProjectDescription
//import ProjectDescriptionHelpers
//
//let dependencies = Dependencies(
//    carthage: [],
//    swiftPackageManager: [
//        .remote(
//            url: "https://github.com/ReactiveX/RxSwift.git",
//            requirement: .upToNextMajor(from: "6.5.0")
//        )
//    ],
//    platforms: [.iOS]
//)

// ✅ [Project.swift]
let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .framework,
    packages: [],
    dependencies: [
        .external(name: "RxSwift"),
        .external(name: "RxCocoa")
    ]
)

// ✅ Dependencies.swift를 사용한 경우 ✅
// ✅ tuist clean과 tuist fetch를 해준 후에 tuist generate를 해주어야 정상적으로 돌아간다. ✅

// Swift Package Manager방법을 할 경우
//
//init(
//    _ packages: [ProjectDescription.Package],
//    productTypes: [String : ProjectDescription.Product] = [:],
//    baseSettings: ProjectDescription.Settings = .settings(),
//    targetSettings: [String : ProjectDescription.SettingsDictionary] = [:],
//    projectOptions: [String : ProjectDescription.Project.Options] = [:]
//)
//
// 로 더 옵션이 있다.
// productTypes같은 경우, SPM은 기본적으로 static으로 패키지들을 가져오는데 이 패키지들의 productType을 바꿀 때 사용할 수 있다.

//...
//productTypes: [
//    "Alamofire": .framework
//]
//...
//
// 위와 같은 느낌으로 (패키지명): (productType) 으로 할 수 있다.
// baseSettings은 SPM으로 생성된 타겟들에 추가될 Base설정이 되겠다.
// targetSettings는 타겟에 추가될 설정들, projectOptions도 Project의 옵션 설정을 하는 것이다.

// MARK: Xcode native Swift Package Manager

// package는 remote와 local 두 종류가 있습니다.
// local은 경로를 입력해서 package를 등록하면 되고, remote는 url과 requirement를 받는다.
// url은 SPM을 지원하는 레포의 Remote Git url을 넣어주시면 되고 requirement는 버전 정보다.

// 6가지 종류가 있다.

// 버전 넘버링의 경우 {Major}.{Minor}.{Patch} 이다.
// upToNextMajor(from: ProjectDescription.Version) : {Major}.0.0 부터 {Major+1}.0.0 이전까지의 버전을 사용합니다. (6.0.0 ~ 7.0.0)
// upToNextMinor(from: ProjectDescription.Version) : {Major}.{Minor}.0 부터 {Major}.{Minor+1}.0 이전 까지의 버전을 사용한다. (6.0.0 ~ 6.1.0)
// range(from: ProjectDescription.Version, to: ProjectDescription.Version) : from부터 to 까지의 버전을 사용한다.
// exact(ProjectDescription.Version) : 특정 버전을 사용합니다.
// branch(String) : 특정 브랜치를 기준으로 Package를 가져와 사용한다.
// revision(String) : 특정 커밋을 기준으로 Package를 가져와 사용한다.

// ✅ [Project.swift]
//let project = Project.makeModule(
//    name: "ThirdPartyLib",
//    product: .framework,
//    packages: [
//        .remote(
//            url: "https://github.com/ReactiveX/RxSwift.git",
//            requirement: .upToNextMajor(from: "6.5.0")
//        )
//    ],
//    dependencies: [
//        .package(product: "RxSwift"),
//        .package(product: "RxCocoa")
//    ]
//)

// MARK: Carthage

// Tuist의 SPM과 거의 비슷하다. SPM이 Carthage로 바뀐거라고 보면 된다. 단 Carthage가 설치되어있어야 한다.

// ✅ [Dependencies.swift]
//import ProjectDescription
//import ProjectDescriptionHelpers
//
//let dependencies = Dependencies(
//    carthage: [
//        .github(
//            path: "https://github.com/ReactiveX/RxSwift.git",
//            requirement: .upToNext("6.5.0")
//        )
//    ],
//    swiftPackageManager: [],
//    platforms: [.iOS]
//)

// ✅ [Project.swift]
//import ProjectDescription
//import ProjectDescriptionHelpers
//
//let project = Project.makeModule(
//    name: "ThirdPartyLib",
//    product: .framework,
//    packages: [],
//    dependencies: [
//        .external(name: "RxSwift"),
//        .external(name: "RxCocoa")
//    ]
//)

// 카르타고같은 경우 Dependencies.swift에 카르타고 디펜던시를 수정하면 tuist fetch -u 로 해야 수정사항이 반영 된다.

// MARK: Framework(xcframework)

// 로컬의 프레임워크를 직접 참조하여 의존성을 추가하는 방식이다.

// ✅ [Project.swift]
//import ProjectDescription
//import ProjectDescriptionHelpers
//
//let project = Project.makeModule(
//    name: "ThirdPartyLib",
//    product: .framework,
//    packages: [],
//    dependencies: [
//        .framework(path: .relativeToRoot("Frameworks/RxSwift.framework"))
//    ]
//)
