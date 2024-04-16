import ProjectDescription

let project = Project(
  name: "ChildTwo",
  targets: [
    .target(
      name: "ChildTwo",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "me.lievano.AppChildTwo",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: []
    ),
  ]
)
