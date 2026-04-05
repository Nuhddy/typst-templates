#import "../template.typ": report

#show: report.with(
  title: "The Title Goes Here",
  authors: (
    (name: "Some Name", email: "some@email.com"),
    (name: "Some Other Name", email: "some.other@email.com"),
  ),
  subtitle: "Subtitle or Course",
)

= Section 1

#lorem(100)

#lorem(100)

= Section 2

#lorem(50)

== Subsection

#lorem(200)

=== Subsubsection

#lorem(150)
