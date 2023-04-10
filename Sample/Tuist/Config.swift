import ProjectDescription

// MARK: 로컬에서 Plugin 가져오는 방법

let config = Config(
    plugins: [
        .local(path: .relativeToRoot("Plugin/UtilityPlugin"))
    ]
)

// MARK: Remote Plugin 가져오는 방법

//import ProjectDescription
//
//let config = Config(
//    plugins: [
//        .git(url: "https://url/to/UtilityPlugin", tag: "1.0.0")
//    ]
//)
