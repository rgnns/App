import ProjectDescription

let project = Project(
  name: "ChildOne",
  targets: [
    .target(
      name: "ChildOne",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "me.lievano.AppChildOne",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: []
    ),
  ]
)
