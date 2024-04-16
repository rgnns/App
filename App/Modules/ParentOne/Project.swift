import ProjectDescription

let project = Project(
  name: "ParentOne",
  targets: [
    .target(
      name: "ParentOne",
      destinations: .iOS,
      product: .framework,
      bundleId: "me.lievano.AppParentOne",
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
