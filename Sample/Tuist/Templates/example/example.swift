// example.swift
import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "A template for new module",
    attributes: [
        nameAttribute,
    ],
    items: [
        .string(
            path: "Source.swift",
            contents: "// Source contents of name \(nameAttribute)"
        ),
        .file(
            path: "Project.swift",
            templatePath: "project.stencil"
        ),
        .directory(
            path: "destination",
            sourcePath: "source"
        )
    ]
)
