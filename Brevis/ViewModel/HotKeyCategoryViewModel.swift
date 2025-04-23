//
//  HotKeyCategoryViewModel.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import Foundation

@Observable
class HotkeyCategoryViewModel {
    var hotketCategoryModels: [HotKeyCategoryModel] = []
    
    init() {
        let productCategory: HotKeyCategoryModel = .init(
            name: "Product",
            models: [
                .init(
                    modifiers: [.command],
                    character: "b",
                    text: "Build"
                ),
                .init(
                    modifiers: [.command],
                    character: "r",
                    text: "Run"
                ),
                .init(
                    modifiers: [.command],
                    character: ".",
                    text: "Stop"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    character: "k",
                    text: "Clean build folder"
                ),
            ]
        )
        let schemeCategory: HotKeyCategoryModel = .init(
            name: "Scheme",
            models: [
                .init(
                    modifiers: [.control],
                    character: "0",
                    text: "Choose scheme"
                ),
                .init(
                    modifiers: [.command],
                    character: "<",
                    text: "Edit scheme"
                ),
            ]
        )
        let hideOrShowPanelsCategory: HotKeyCategoryModel = .init(
            name: "Hide or Show Panels",
            models: [
                .init(
                    modifiers: [.command],
                    character: "0",
                    text: "Show/Hide Navigator (Left panel)"
                ),
                .init(
                    modifiers: [
                        .option,
                        .shift
                    ],
                    character: "0",
                    text: "Show/Hide Utilities (Right panel)"
                ),
                .init(
                    modifiers: [.shift],
                    character: "Y",
                    text: "Show/Hide the Debug area"
                ),
                .init(
                    modifiers: [
                        .command,
                        .option
                    ],
                    character: "⏎",
                    text: "Show/Hide Canvas"
                ),
            ]
        )
        let navigationCategory: HotKeyCategoryModel = .init(
            name: "Navigation",
            models: [
                .init(
                    modifiers: [.command],
                    character: "1",
                    text: "Project"
                ),
                .init(
                    modifiers: [.command],
                    character: "2",
                    text: "Source control"
                ),
                .init(
                    modifiers: [.command],
                    character: "3",
                    text: "boomarks"
                ),
                .init(
                    modifiers: [.command],
                    character: "4",
                    text: "find"
                ),
                .init(
                    modifiers: [.command],
                    character: "5",
                    text: "Issues"
                ),
                .init(
                    modifiers: [.command],
                    character: "6",
                    text: "Tests"
                ),
                .init(
                    modifiers: [.command],
                    character: "7",
                    text: "Debug"
                ),
                .init(
                    modifiers: [.command],
                    character: "8",
                    text: "Breakpoints"
                ),
                .init(
                    modifiers: [.command],
                    character: "9",
                    text: "Reports"
                ),
            ]
        )
        let inspectorCategory: HotKeyCategoryModel = .init(
            name: "Inspector",
            models: [
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    character: "1",
                    text: "File"
                ),
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    character: "2",
                    text: "History"
                ),
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    character: "3",
                    text: "Quick Help"
                ),
                .init(
                    modifiers: [
                        .option,
                        .command
                    ],
                    character: "4",
                    text: "Show Inspector"
                ),
            ]
        )
        let structureCategory: HotKeyCategoryModel = .init(
            name: "Structure",
            models: [
                .init(
                    modifiers: [.command],
                    character: "/",
                    text: "Toggle comment/uncomment"
                ),
                .init(
                    modifiers: [.control],
                    character: "I",
                    text: "Re-indent selected code"
                ),
                .init(
                    modifiers: [.control],
                    character: "M",
                    text: "Format multiple lines"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    character: "[",
                    text: "Shift Left"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    character: "]",
                    text: "Shift Right"
                ),
            ]
        )
        let editingCategory: HotKeyCategoryModel = .init(
            name: "Editing",
            models: [
                .init(
                    modifiers: [.command],
                    character: "C",
                    text: "Copy"
                ),
                .init(
                    modifiers: [.command],
                    character: "V",
                    text: "Paste"
                ),
                .init(
                    modifiers: [
                        .command,
                        .shift,
                        .option
                    ],
                    character: "V",
                    text: "Paste and Preserve Formatting"
                ),
                .init(
                    modifiers: [.command],
                    character: "D",
                    text: "Duplicate"
                ),
            ]
        )
        let miscCategory: HotKeyCategoryModel = .init(
            name: "Miscellaneous",
            models: [
                .init(
                    modifiers: [
                        .command,
                        .shift
                    ],
                    character: "A",
                    text: "Quick actions"
                ),
                .init(
                    modifiers: [
                        .shift,
                        .control
                    ],
                    character: "🖱️",
                    text: "Create a new cursor on every click"
                ),
                .init(
                    modifiers: [
                        .shift,
                        .control,
                        .command
                    ],
                    character: "M",
                    text: "Minimap"
                ),
                .init(
                    modifiers: [.globe],
                    character: "E",
                    text: "Emojis"
                ),
            ]
        )
        let debuggingCategory: HotKeyCategoryModel = .init(
            name: "Debugging",
            models: [
                .init(
                    modifiers: [.command],
                    character: "\\",
                    text: "Comment out"
                ),
                .init(
                    modifiers: [
                        .control,
                        .option,
                        .command
                    ],
                    character: "F",
                    text: "Fix all in scope"
                ),
            ]
        )
        let fileMenuCommandsCategory: HotKeyCategoryModel = .init(
            name: "File menu commands",
            models: [
                .init(
                    modifiers: [.command],
                    character: "N",
                    text: "New File"
                ),
                .init(
                    modifiers: [
                        .command,
                        .option
                    ],
                    character: "N",
                    text: "New Group"
                ),
            ]
        )
        let sourceControlCategory: HotKeyCategoryModel = .init(
            name: "Source Control",
            models: [
                .init(
                    modifiers: [.command],
                    character: "9",
                    text: "Open the Source Control Navigator"
                ),
                .init(
                    modifiers: [
                        .command,
                        .option
                    ],
                    character: "C",
                    text: "Commit changes"
                ),
            ]
        )
        
        hotketCategoryModels = [
            productCategory,
            schemeCategory,
            hideOrShowPanelsCategory,
            navigationCategory,
            inspectorCategory,
            structureCategory,
            editingCategory,
            debuggingCategory,
            fileMenuCommandsCategory,
            sourceControlCategory,
            miscCategory
        ]
    }
}
