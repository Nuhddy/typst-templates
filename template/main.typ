#import "@local/uni:0.1.0": homework, report

#show: homework.with(
  title: "Title",
  author: (name: "Author Name", email: "author@email.com"),
  subtitle: "Subtitle",
)

#show: report.with(
  title: "Title",
  authors: (
    (name: "Author Name", email: "author@email.com"),
    (name: "Co-author Name", email: "co-author@email.com"),
  ),
  subtitle: "Subtitle",
  compact: true,
)
