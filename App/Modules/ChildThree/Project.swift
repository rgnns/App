import ProjectDescription

let project = Project(
  name: "ChildThree",
  targets: [
    .target(
      name: "ChildThree",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "me.lievano.AppChildThree",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: []
    ),
  ]
)
