#let resume(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  show link: underline
  show link: set underline(offset: 3pt)

  set page(paper: "us-letter", margin: (x: 0.5in, y: 0.5in))

  set text(size: 11pt, font: "New Computer Modern")

  body
}

#let name_header(name) = {
  set text(size: 2.25em)
  [*#name*]
}

#let header(
  name: "Jake Ryan",
  phone: "123-456-7890",
  email: "jake@su.edu",
  linkedin: "linkedin.com/in/jake",
  site: "github.com/jake",
) = {
  align(
    center,
    block[
      #name_header(name) \
      #phone |
      #link("mailto:" + email)[#email] |
      #link("https://" + linkedin)[#linkedin] | #link("https://" + site)[#site]
    ],
  )
  v(5pt)
}

#let resume_heading(txt) = {
  show heading: set text(size: 0.92em, weight: "regular")

  block[
    = #smallcaps(txt)
    #v(-4pt)
    #line(length: 100%, stroke: 1pt + black)
  ]
}

#let edu_item(
  name: "Sample University",
  degree: "",
  location: "Foo, BA",
  date: "Aug. 1600 - May 1750",
  ..points,
) = {
  set block(above: 0.5em, below: 0.75em)
  pad(left: 0.5em, right: 0.5em, box[
    #grid(columns: (3fr, 1fr), align(left)[
      *#name* \
      _#degree _
    ], align(right)[
      #location \
      _#date _
    ])
    #list(..points)
  ])
}

#let exp_item(
  name: "Sample Workplace",
  role: "Worker",
  date: "June 1837 - May 1845",
  location: "Foo, BA",
  ..points,
) = {
  set block(above: 0.5em, below: 0.75em)
  pad(left: 0.5em, right: 0.5em, box[
    #grid(columns: (3fr, 1fr), align(left)[
      *#role* \
      _#name _
    ], align(right)[
      #date \
      _#location _
    ])
    #list(..points)
  ])
}

#let exp_item_NSA() = {
  set block(above: 0.5em, below: 0.5em)
  pad(left: 0.5em, right: 0.5em, box[
    #grid(columns: (3fr, 1fr), align(left)[
      *#"National Security Agency (NSA)"* \
      _#"Software Developer Intern" _
    ], align(right)[
      #"Aug. 2023 - Present" \
      _#"Fort Meade, MD" _
    ])
    #list("TBD", "TBD")
  ])
  set block(above: 0.7em, below: 0.5em)
  pad(
    left: 0.5em,
    right: 0.5em,
    box[
      #grid(columns: (3fr, 1fr), align(left)[
        _#"Software Developer Intern (High School)" _
      ], align(right)[
        #"Sep. 2022 - Aug. 2023"
      ])
      #list(
        "Member of the government development team in the Data Targeting Solutions division. This team is essential for the creation of enterprise applications in support of targeting using Cloud Native techniques",
        "Selects and completes stories within each Sprint, enabling features to be delivered on time",
        "Participate in scrum Agile development methodology, including all ceremonies",
        "As part of a DevOps team, support project from requirements gathering, development, unit testing, integration testing to deployment and maintenance",
      )
    ],
  )
}

#let project_item(
  name: "Example Project",
  skills: "Programming Language 1, Database3",
  date: "May 1234 - June 4321",
  ..points,
) = {
  set block(above: 0.5em, below: 0.75em)
  pad(left: 0.5em, right: 0.5em, box[
    *#name* | _#skills _ #h(1fr) #date
    #list(..points)
  ])
}

#let skill_item(category: "Skills", skills: "Balling, Yoga, Valorant") = {
  set block(above: 0.5em)
  set text(size: 0.91em)
  pad(left: 0.5em, right: 0.5em, block[*#category*: #skills])
}