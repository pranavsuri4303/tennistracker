//
//  TasksProjects.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct TasksProjectsTemplate: View {
    var isDark = false

    var statusesChart: XelaPieDatasets = .init(dataset: XelaPieChartDataset(label: "statuses", data: [49, 57, 23, 18], fillColors: [Color(xelaColor: .Blue5), Color(xelaColor: .Purple5), Color(xelaColor: .Green2), Color(xelaColor: .Orange5)]))
    var labels: [String] = ["To Do", "Completed", "Active", "Review"]

    @State var isShowDetails = false

    var tabs: [XelaTabsItem] = [
        XelaTabsItem(id: 0, label: "To Do"),
        XelaTabsItem(id: 1, label: "Active"),
        XelaTabsItem(id: 2, label: "Review"),
        XelaTabsItem(id: 3, label: "Completed"),
    ]

    @State var selectedTabId: Int = 0

    var tasks: [[Task]] = [
        [
            Task(
                id: "1",
                priority: .High,
                date: "June 26-28, 2020",
                title: "Management Activities Completed",
                caption: "Discharge Insulating Concrete Forms",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3")),
                ],
                atachmentsCount: "4",
                messagesCount: "0"
            ),
            Task(
                id: "2",
                priority: .Medium,
                date: "July 11, 2020",
                title: "Security Planning",
                caption: "Supplement Grading",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "0",
                messagesCount: "2"
            ),
            Task(
                id: "3",
                priority: .Low,
                date: "August 1-2, 2020",
                title: "Documentation",
                caption: "Repair Grinding and Shredding Equipment",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "2",
                messagesCount: "10"
            ),
            Task(
                id: "4",
                priority: .High,
                date: "June 13, 2020",
                title: "System Test",
                caption: "Repair Stone Masonry Veneer",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "7"
            ),
            Task(
                id: "5",
                priority: .Low,
                date: "June 6, 2020",
                title: "Technical Specification",
                caption: "Initiate Wall and Corner Guards",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "0"
            ),
        ],
        [
            Task(
                id: "1",
                priority: .Medium,
                date: "July 11, 2020",
                title: "Security Planning",
                caption: "Supplement Grading",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "0",
                messagesCount: "2"
            ),
            Task(
                id: "2",
                priority: .Low,
                date: "August 1-2, 2020",
                title: "Documentation",
                caption: "Repair Grinding and Shredding Equipment",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "2",
                messagesCount: "10"
            ),
            Task(
                id: "3",
                priority: .High,
                date: "June 13, 2020",
                title: "System Test",
                caption: "Repair Stone Masonry Veneer",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "7"
            ),
            Task(
                id: "4",
                priority: .Low,
                date: "June 6, 2020",
                title: "Technical Specification",
                caption: "Initiate Wall and Corner Guards",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "0"
            ),
            Task(
                id: "5",
                priority: .High,
                date: "June 26-28, 2020",
                title: "Management Activities Completed",
                caption: "Discharge Insulating Concrete Forms",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3")),
                ],
                atachmentsCount: "4",
                messagesCount: "0"
            ),
        ],
        [
            Task(
                id: "1",
                priority: .Low,
                date: "August 1-2, 2020",
                title: "Documentation",
                caption: "Repair Grinding and Shredding Equipment",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "2",
                messagesCount: "10"
            ),
            Task(
                id: "2",
                priority: .High,
                date: "June 13, 2020",
                title: "System Test",
                caption: "Repair Stone Masonry Veneer",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "7"
            ),
            Task(
                id: "3",
                priority: .Low,
                date: "June 6, 2020",
                title: "Technical Specification",
                caption: "Initiate Wall and Corner Guards",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "0"
            ),
            Task(
                id: "4",
                priority: .High,
                date: "June 26-28, 2020",
                title: "Management Activities Completed",
                caption: "Discharge Insulating Concrete Forms",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3")),
                ],
                atachmentsCount: "4",
                messagesCount: "0"
            ),
            Task(
                id: "5",
                priority: .Medium,
                date: "July 11, 2020",
                title: "Security Planning",
                caption: "Supplement Grading",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "0",
                messagesCount: "2"
            ),
        ],
        [
            Task(
                id: "1",
                priority: .High,
                date: "June 13, 2020",
                title: "System Test",
                caption: "Repair Stone Masonry Veneer",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "7"
            ),
            Task(
                id: "2",
                priority: .Low,
                date: "June 6, 2020",
                title: "Technical Specification",
                caption: "Initiate Wall and Corner Guards",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "0"
            ),
            Task(
                id: "3",
                priority: .High,
                date: "June 26-28, 2020",
                title: "Management Activities Completed",
                caption: "Discharge Insulating Concrete Forms",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3")),
                ],
                atachmentsCount: "4",
                messagesCount: "0"
            ),
            Task(
                id: "4",
                priority: .Medium,
                date: "July 11, 2020",
                title: "Security Planning",
                caption: "Supplement Grading",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "0",
                messagesCount: "2"
            ),
            Task(
                id: "5",
                priority: .Low,
                date: "August 1-2, 2020",
                title: "Documentation",
                caption: "Repair Grinding and Shredding Equipment",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "2",
                messagesCount: "10"
            ),
        ],
        [
            Task(
                id: "1",
                priority: .Low,
                date: "June 6, 2020",
                title: "Technical Specification",
                caption: "Initiate Wall and Corner Guards",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "0"
            ),
            Task(
                id: "2",
                priority: .High,
                date: "June 26-28, 2020",
                title: "Management Activities Completed",
                caption: "Discharge Insulating Concrete Forms",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3")),
                ],
                atachmentsCount: "4",
                messagesCount: "0"
            ),
            Task(
                id: "3",
                priority: .Medium,
                date: "July 11, 2020",
                title: "Security Planning",
                caption: "Supplement Grading",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "0",
                messagesCount: "2"
            ),
            Task(
                id: "4",
                priority: .Low,
                date: "August 1-2, 2020",
                title: "Documentation",
                caption: "Repair Grinding and Shredding Equipment",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                ],
                atachmentsCount: "2",
                messagesCount: "10"
            ),
            Task(
                id: "5",
                priority: .High,
                date: "June 13, 2020",
                title: "System Test",
                caption: "Repair Stone Masonry Veneer",
                users: [
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-4")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-5")),
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-6")),
                ],
                atachmentsCount: "0",
                messagesCount: "7"
            ),
        ],
    ]

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 16) {
                    Button(action: {}) {
                        Image("left")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }
                    Text("Projects")
                        .xelaButtonLarge()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }

                Spacer()
                HStack(spacing: 16) {
                    XelaButton(text: "Create project", leftIcon: "add", size: .Small, background: isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                    XelaButton(leftIcon: "search-textfield", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), autoResize: true)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
            .shadow(color: Color(.black).opacity(0.08), radius: 48, x: 0, y: 4)
            .shadow(color: Color(.black).opacity(0.08), radius: 12, x: 0, y: 8)

            VStack(spacing: 0) {
                if isShowDetails {
                    VStack(spacing: 16) {
                        HStack(spacing: 8) {
                            Text("184")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("Projects")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                        }
                        HStack(spacing: 24) {
                            ZStack {
                                XelaChart(type: .Pie, datasetPieChart: statusesChart)
                                    .frame(width: 120, height: 120)
                                Circle()
                                    .fill(isDark ? Color(xelaColor: .Gray1) : Color(.white))
                                    .frame(width: 80, height: 80)
                            }
                            VStack(spacing: 12) {
                                ForEach(0 ... (statusesChart.dataset.data.count - 1), id: \.self) { index in
                                    HStack(spacing: 8) {
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(statusesChart.dataset.fillColors[index])
                                            .frame(width: 12, height: 12)
                                        Text(labels[index])
                                            .xelaButtonSmall()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                        Spacer()
                                        Text("\(Int(statusesChart.dataset.data[index]))")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray6))
                                    }
                                }
                            }
                        }
                    }
                    .padding(16)

                    VStack(spacing: 8) {
                        HStack(spacing: 8) {
                            Text("7")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("Teams")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                        }
                        HStack(spacing: 8) {
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "android", background: Color(xelaColor: .Green1), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "apple", background: Color(xelaColor: .Blue6), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "database", background: Color(xelaColor: .Orange6), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "figma", background: Color(xelaColor: .Pink6), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "framer", background: Color(xelaColor: .Gray3), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "vue", background: Color(xelaColor: .Pink6), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "ab-testing", background: Color(xelaColor: .Red6), foreground: Color(.white))
                            Button(action: {}) {
                                ZStack {
                                    Circle()
                                        .stroke(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))

                                    Image("add")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 7, height: 7)
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray2))
                                }
                                .frame(width: 32, height: 32)
                            }
                            Spacer()
                        }
                    }
                    .padding(16)

                    VStack(spacing: 8) {
                        HStack(spacing: 8) {
                            Text("23")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("Members")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                        }
                        HStack(spacing: 8) {
                            XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1"), background: Color(xelaColor: .Green1), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, initials: "CF", background: Color(xelaColor: .Purple9), foreground: Color(xelaColor: .Purple3))
                            XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2"), background: Color(xelaColor: .Orange6), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, icon: "user-circle", background: Color(xelaColor: .Blue5), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3"), background: Color(xelaColor: .Gray3), foreground: Color(.white))
                            XelaUserAvatar(size: .Small, style: .Circle, initials: "GH", background: Color(xelaColor: .Green8), foreground: Color(xelaColor: .Green1))
                            XelaUserAvatar(size: .Small, style: .Circle, initials: "+17", background: Color(xelaColor: .Gray4), foreground: Color(.white))
                            Button(action: {}) {
                                ZStack {
                                    Circle()
                                        .stroke(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))

                                    Image("add")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 7, height: 7)
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray2))
                                }
                                .frame(width: 32, height: 32)
                            }
                            Spacer()
                        }
                    }
                    .padding(16)
                }

                HStack {
                    Button(action: {
                        withAnimation {
                            isShowDetails.toggle()
                        }
                    }) {
                        HStack(spacing: 12) {
                            Image(isShowDetails ? "up-small-1" : "down-small")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 15, height: 15)
                            Text(isShowDetails ? "Hide Details" : "Show Details")
                                .xelaCaption()
                        }
                        .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3))
                    }
                    Spacer()
                }
                .padding(16)
            }

            XelaTabs(items: tabs, selectedId: $selectedTabId, primaryColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), secondaryColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray3), badgeBackground: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray8), badgeTextColor: Color(.white), badgeBackgroundSelected: isDark ? Color(xelaColor: .Orange5) : Color(xelaColor: .Orange3), bottomLineColor: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))

            HStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(statusesChart.dataset.fillColors[selectedTabId])
                    .frame(width: 12, height: 12)
                Text(labels[selectedTabId])
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                Spacer()
            }
            .padding(16)

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    TasksView(tasks: tasks[selectedTabId], isDark: isDark)
                        .padding(.horizontal, 16)
                }
            }

            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
}

struct Task: Identifiable {
    var id: String
    var priority: TaskPriority
    var date: String
    var title: String
    var caption: String
    var users: [XelaUserAvatar]
    var atachmentsCount: String
    var messagesCount: String
}

enum TaskPriority: String {
    case High, Medium, Low
}

@ViewBuilder
func TasksView(tasks: [Task], isDark: Bool) -> some View {
    ForEach(tasks) { task in
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 8) {
                Text(task.id)
                    .xelaCaption()
                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                    .foregroundColor(task.priority == .High ? (isDark ? Color(xelaColor: .Blue1) : Color(xelaColor: .Blue3)) : task.priority == .Medium ? (isDark ? Color(xelaColor: .Orange1) : Color(xelaColor: .Orange3)) : (isDark ? Color(xelaColor: .Green1) : Color(xelaColor: .Green1)))
                    .background(task.priority == .High ? (isDark ? Color(xelaColor: .Blue8) : Color(xelaColor: .Blue11)) : task.priority == .Medium ? (isDark ? Color(xelaColor: .Orange8) : Color(xelaColor: .Orange11)) : (isDark ? Color(xelaColor: .Green8) : Color(xelaColor: .Green11)))
                    .cornerRadius(10)
                Text(task.priority.rawValue)
                    .xelaCaption()
                    .foregroundColor(task.priority == .High ? (isDark ? Color(xelaColor: .Blue1) : Color(xelaColor: .Blue3)) : task.priority == .Medium ? (isDark ? Color(xelaColor: .Orange1) : Color(xelaColor: .Orange3)) : (isDark ? Color(xelaColor: .Green1) : Color(xelaColor: .Green1)))

                Spacer()
                Text(task.date)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray6))
            }

            VStack(alignment: .leading, spacing: 0) {
                Text(task.title)
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text(task.caption)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray6))
            }

            TaskViewSubItem(task: task, isDark: isDark)
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
        .cornerRadius(16)
    }
}

@ViewBuilder
func TaskViewSubItem(task: Task, isDark _: Bool) -> some View {
    HStack(spacing: 16) {
        ZStack {
            ForEach(0 ... (task.users.count - 1), id: \.self) { index in
                HStack {
                    task.users[index]
                }
                .offset(x: CGFloat(24 * index))
            }
        }
        Spacer()
        if task.atachmentsCount != "0" {
            HStack(spacing: 8) {
                Image("attach")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 15, height: 15)
                Text(task.atachmentsCount)
                    .xelaButtonSmall()
            }
            .foregroundColor(Color(xelaColor: .Gray6))
        }

        if task.messagesCount != "0" {
            HStack(spacing: 8) {
                Image("message-text-alt-2")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 15, height: 15)
                Text(task.messagesCount)
                    .xelaButtonSmall()
            }
            .foregroundColor(Color(xelaColor: .Gray6))
        }
    }
}
