import ProjectDescription

let project = Project(
  name: "ParentTwo",
  targets: [
    .target(
      name: "ParentTwo",
      destinations: .iOS,
      product: .framework,
      bundleId: "me.lievano.AppParentTwo",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: [
        .project(target: "Children", path: .relativeToManifest("../")),
        // .project(target: "ChildTwo", path: .relativeToManifest("../ChildTwo")),
        // .project(target: "ChildThree", path: .relativeToManifest("../ChildThree")),
      ]
    ),
  ]
)
