import ProjectDescription

let project = Project(
  name: "App",
  targets: [
    .target(
      name: "App",
      destinations: .iOS,
      product: .app,
      bundleId: "me.lievano.App",
      infoPlist: .extendingDefault(
        with: [
          "UILaunchStoryboardName": "LaunchScreen.storyboard",
        ]
      ),
      sources: ["App/Sources/**"],
      resources: ["App/Resources/**"],
      dependencies: [
        .project(target: "ParentOne", path: .relativeToManifest("App/Modules/ParentOne")),
        .project(target: "ParentTwo", path: .relativeToManifest("App/Modules/ParentTwo")),
      ]
    ),
    .target(
      name: "AppTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "me.lievano.AppTests",
      infoPlist: .default,
      sources: ["App/Tests/**"],
      resources: [],
      dependencies: [
        .target(name: "App"),
      ]
    ),
  ]
)
