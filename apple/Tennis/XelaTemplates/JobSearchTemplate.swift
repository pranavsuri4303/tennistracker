//
//  JobSearch.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct JobSearchTemplate: View {
    var isDark = false

    @State var searchText: String = ""
    @State var searchState: XelaTextFieldState = .Default
    @State var searchHelperText: String = ""

    @State var showJobDescription = false

    var jobs: [Job] = [
        Job(id: "1", avatar: XelaUserAvatar(size: .Large, style: .Rectangle, icon: "angular", background: Color(xelaColor: .Blue3), foreground: Color(.white)), title: "Fixed Income Specialist", caption: "2715 Ash Dr. San Jose, South Dakota 83475", type: .FullTime, level: .MiddleLevel, date: "2 minutes ago", liked: false),
        Job(id: "2", avatar: XelaUserAvatar(size: .Large, style: .Rectangle, icon: "docker", background: Color(xelaColor: .Orange3), foreground: Color(.white)), title: "Group Sales Manager", caption: "8502 Preston Rd. Inglewood, Maine 98380", type: .PartTime, level: .EntryLevel, date: "2 hours ago", liked: true),
        Job(id: "3", avatar: XelaUserAvatar(size: .Large, style: .Rectangle, icon: "framer-1", background: Color(xelaColor: .Pink3), foreground: Color(.white)), title: "Territory Sales Manager", caption: "2118 Thornridge Cir. Syracuse, Connecticut 35624", type: .Contract, level: .MiddleLevel, date: "12 hours ago", liked: false),
        Job(id: "4", avatar: XelaUserAvatar(size: .Large, style: .Rectangle, icon: "rust", background: Color(xelaColor: .Red3), foreground: Color(.white)), title: "Territory Business Manager", caption: "4517 Washington Ave. Manchester, Kentucky 39495", type: .Internship, level: .MiddleLevel, date: "22 hours ago", liked: false),
    ]

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image("logo")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(.white))
                    .frame(height: 16)
                    .padding(.horizontal, 16)

                Spacer()

                Button(action: {}) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(.white))
                }
                .padding(.horizontal, 16)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(.black) : Color(xelaColor: .Gray2))

            ScrollView {
                VStack(spacing: 0) {
                    VStack(spacing: 16) {
                        XelaTextField(
                            placeholder: "Search",
                            value: $searchText,
                            state: $searchState,
                            helperText: $searchHelperText,
                            leftIcon: "search-textfield",
                            background: isDark ? Color(xelaColor: .Gray1) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        .padding(.horizontal, 16)
                        .padding(.top, 16)

                        XelaButton(text: "Search Jobs", size: .Medium, background: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: false)
                            .padding(.horizontal, 16)

                        Button(action: {}) {
                            HStack(spacing: 8) {
                                Text("Advanced Search")
                                    .xelaButtonMedium()

                                Image("down-small-1")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 15, height: 15)
                            }
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        .padding(.horizontal, 16)
                        .padding(.bottom, 16)
                    }
                    .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))

                    HStack {
                        Text("Results")
                            .xelaSubheadline()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                        Spacer()

                        XelaButton(text: "Filters", rightIcon: "av-2", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                    }
                    .padding(16)

                    VStack(spacing: 16) {
                        ForEach(jobs) { job in
                            Button(action: {
                                showJobDescription.toggle()
                            }) {
                                jobView(job: job)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                }
                // .padding(16)
            }

            Spacer()
        }
        .background(isDark ? Color(.black) : Color(xelaColor: .Gray12))
        .sheet(isPresented: $showJobDescription) {
            JobDecriptionTemplate(isDark: isDark)
                .edgesIgnoringSafeArea(.all)
        }
    }

    @ViewBuilder
    func jobView(job: Job) -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                job.avatar
                VStack(alignment: .leading, spacing: 0) {
                    Text(job.title)
                        .xelaBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text(job.caption)
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray6))
                }
                if job.liked {
                    XelaButton(leftIcon: "heart", size: .Small, type: .Primary, background: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                } else {
                    XelaButton(leftIcon: "heart-1", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                }
            }
            HStack(spacing: 0) {
                HStack(spacing: 16) {
                    Text(job.type.rawValue)
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray3))
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .background(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray11))
                        .cornerRadius(10)

                    Text(job.level.rawValue)
                        .xelaCaption()
                        .lineLimit(1)
                        .foregroundColor(job.level == .EntryLevel ? (isDark ? Color(xelaColor: .Green1) : Color(xelaColor: .Green1)) : job.level == .MiddleLevel ? isDark ? Color(xelaColor: .Purple1) : Color(xelaColor: .Purple3) : isDark ? Color(xelaColor: .Blue1) : Color(xelaColor: .Blue3))
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .background(job.level == .EntryLevel ? (isDark ? Color(xelaColor: .Green8) : Color(xelaColor: .Green11)) : job.level == .MiddleLevel ? isDark ? Color(xelaColor: .Purple8) : Color(xelaColor: .Purple11) : isDark ? Color(xelaColor: .Blue8) : Color(xelaColor: .Blue11))
                        .cornerRadius(10)
                }

                Spacer()
                Text(job.date)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray6))
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(24)
    }
}

struct Job: Identifiable {
    var id: String
    var avatar: XelaUserAvatar
    var title: String
    var caption: String
    var type: JobType
    var level: JobLevel
    var date: String
    var liked: Bool
}

enum JobLevel: String {
    case MiddleLevel = "Middle Level", SeniorLevel = "Senior Level", EntryLevel = "Entry Level"
}

enum JobType: String {
    case FullTime = "Full Time", PartTime = "Part Time", Contract, Internship
}

struct JobDecriptionTemplate: View {
    @Environment(\.presentationMode) var presentationMode
    var isDark: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image("logo")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(.white))
                    .frame(height: 16)
                    .padding(.horizontal, 16)

                Spacer()

                Button(action: {}) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(.white))
                }
                .padding(.horizontal, 16)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(.black) : Color(xelaColor: .Gray2))

            HStack(spacing: 0) {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack(spacing: 8) {
                        Image("left")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 15, height: 15)

                        Text("Back to List")
                            .xelaButtonMedium()
                    }
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                .padding(16)
                Spacer()
            }
            .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    HStack(spacing: 16) {
                        XelaUserAvatar(size: .Large, style: .Rectangle, icon: "angular", background: Color(xelaColor: .Blue3), foreground: Color(.white))
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Abstergo Ltd.")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("Lafayette, California")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                        }
                        Spacer()
                        XelaButton(leftIcon: "heart-1", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                        XelaButton(leftIcon: "share", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 24)

                    Group {
                        XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                            .padding(.horizontal, 24)

                        VStack(alignment: .leading, spacing: 0) {
                            Text("Experience")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            Text("Minimum 3+ Years")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        .padding(.horizontal, 24)

                        VStack(alignment: .leading, spacing: 0) {
                            Text("Job Type")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            Text("Remote, Full Time")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        .padding(.horizontal, 24)

                        VStack(alignment: .leading, spacing: 0) {
                            Text("Offer Salary")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            Text("$35-$55/hour")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        .padding(.horizontal, 24)

                        XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                            .padding(.horizontal, 24)
                    }

                    Group {
                        Text("Senior Product Designer, Financial Services")
                            .xelaSubheadline()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            .padding(.horizontal, 24)

                        Text("Job Description")
                            .xelaBodyBold()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            .padding(.horizontal, 24)

                        Text("The Financial Services team at Square is responsible for all ways in which a seller may receive, manage, and transfer funds within the Square ecosystem. As a senior-level Product Designer for Financial Services, you will drive the design for experiences that millions of small- and medium-sized businesses depend on to thrive in today’s economy. We have multiple, high impact roles open across several product areas that cover all aspects of starting and running a business. We’re looking for designers who are motivated by turning complex financial problems into simple and elegant solutions. You’ll help make decisions that directly improve our product direction and roadmap. Your work will span from core features to experimental projects. Being a collaborative role, you will partner with other designers, project managers, data analysts, and engineers. We believe generalists have a hand in each stage of product development, so Product Designers at Square take projects from napkin sketches to final specifications.")
                            .xelaSmallBody()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            .padding(.horizontal, 24)

                        XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                            .padding(.horizontal, 24)
                    }

                    Group {
                        Text("Qualifications")
                            .xelaBodyBold()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            .padding(.horizontal, 24)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("You have:")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
                                .padding(.horizontal, 24)

                            Text("- 7+ years of relevant professional experience\n- A portfolio that shows work you were directly responsible for the success of\n- Experience as a primary contributor to multiple high impact projects")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                .padding(.horizontal, 24)
                                .padding(.bottom, 24)
                        }
                    }
                }
            }

            Spacer()
        }
        .background(isDark ? Color(.black) : Color(xelaColor: .Gray12))
    }
}
