import ProjectDescription

let project = Project(
  name: "ChildOne",
  targets: [
    .target(
      name: "ChildOne",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "me.lievano.GrannieChildOne",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: []
    ),
  ]
)
