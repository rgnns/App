import ProjectDescription

let project = Project(
  name: "Modules",
  targets: [
    .target(
      name: "Children",
      destinations: .iOS,
      product: .framework,
      bundleId: "me.lievano.AppChildren",
      infoPlist: .default,
      sources: ["../../Shared/Sources/Stub.swift"],
      resources: [],
      dependencies: [
        .project(target: "ChildOne", path: .relativeToManifest("ChildOne")),
        .project(target: "ChildTwo", path: .relativeToManifest("ChildTwo")),
        .project(target: "ChildThree", path: .relativeToManifest("ChildThree")),
      ]
    ),
  ]
)
