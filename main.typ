// https://github.com/Nuhddy/typst-templates

#let report(
  title: "",
  authors: (),
  subtitle: none,
  date: datetime
    .today()
    .display("[month repr:long] [day padding:none], [year]"),
  compact: false,
  body,
) = {
  set page(margin: 30mm)

  set heading(numbering: "1.1")
  show heading: it => {
    smallcaps(text(weight: "bold", it.body))
  }

  set outline(title: "Table of Contents")

  let title-info = {
    image("assets/logo.png")
    line(length: 100%)
    align(
      bottom,
      {
        text(2em, title)
        v(-0.5em)
        text(1em, subtitle)
        v(2em)
        grid(
          columns: (1fr,) * 3,
          gutter: 1.5em,
          ..authors.map(author => align(start)[
            *#author.name* \
            #author.email
          ]),
        )
        v(2em)
        text(1em, date)
      },
    )
  }

  let full-title = {
    page(title-info)
    outline()
  }

  let compact-title = page({
    block(
      height: 50%,
      {
        title-info
        v(1em)
      },
    )
    align(bottom, outline())
  })

  if compact { compact-title } else { full-title }

  set page(numbering: "1 of 1")
  counter(page).update(n => {
    if compact { n - 1 } else { n - 2 }
  })

  set par(
    justify: true,
    leading: 0.9em,
    spacing: 1.5em,
  )

  body
}
