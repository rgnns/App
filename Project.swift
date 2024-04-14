import ProjectDescription

let project = Project(
  name: "Grannie",
  targets: [
    .target(
      name: "Grannie",
      destinations: .iOS,
      product: .app,
      bundleId: "me.lievano.Grannie",
      infoPlist: .extendingDefault(
        with: [
          "UILaunchStoryboardName": "LaunchScreen.storyboard",
        ]
      ),
      sources: ["Grannie/Sources/**"],
      resources: ["Grannie/Resources/**"],
      dependencies: [
        .project(target: "ParentOne", path: .relativeToManifest("Grannie/Modules/ParentOne")),
        .project(target: "ParentTwo", path: .relativeToManifest("Grannie/Modules/ParentTwo")),
      ]
    ),
    .target(
      name: "GrannieTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "me.lievano.GrannieTests",
      infoPlist: .default,
      sources: ["Grannie/Tests/**"],
      resources: [],
      dependencies: [
        .target(name: "Grannie"),
      ]
    ),
  ]
)
