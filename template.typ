#let resume(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  show link: underline
  show link: set underline(offset: 3pt)

  set page(paper: "us-letter", margin: (x: 0.5in, y: 0.5in))

  set text(size: 12pt, font: "New Computer Modern")

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
  website: "website.",
) = {
  align(center, block[
    #name_header(name) \
    #phone |
    #link("mailto:" + email)[#email] |
    #link("https://" + linkedin)[#linkedin] |
    #link(website)
  ])
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

/** RETIRED BULLET POINTS
    "Contribute to advancements in novel alogrithms for identifying contradictions within KGs"
  "Participated in scrum Agile development methodology, including all ceremonies",
    **/
#let exp_item_DOD() = {
  set block(above: 0.5em, below: 0.5em)
  pad(
    left: 0.5em,
    right: 0.5em,
    box[
      #grid(columns: (3fr, 1fr), align(left)[
        *#"Department of Defense (DoD)"* \
        _#"Artificial Intelligence Research Intern" _
      ], align(right)[
        #"May 2024 - Aug. 2024" \
        _#"Washington, DC" _
      ])
      #list(
        "Worked alongside senior researchers on a project investigating how knowledge graphs (KGs) can be extracted from unstructured text",
        "Collaborated with researchers on the development of a KG-RAG system to enable Knowledge Graph Question Answering (KGQA)",
        "Developed methodologies for Named Entity Recognition (NER) and Relationship Extraction (RE) to populate the KGs",
        "Wrote " + [_#"Python"_] + " scripts using pandas & numpy for efficient processing of data from PDF to KG format",
      )
    ],
  )
  set block(above: 0.7em, below: 0.5em)
  pad(
    left: 0.5em,
    right: 0.5em,
    box[
      #grid(columns: (3fr, 1fr), align(left)[
        _#"Software Engineer Intern" _
      ], align(right)[
        #"Sep. 2022 - Aug. 2023"
      ])
      #list(
        "Member of the government development team in the Data Targeting Solutions division. This team is essential for the creation of enterprise applications in support of targeting using Cloud Native techniques",
        "Utilized " + [_#"Java"_] + " to develop backend database management features for internal web application, and successfully integrated those functionalities into the frontend interface using " + [_#"VueJS"_],
        "Created a developer-sided API to allow for more efficient creation of test agreements/datafeeds",
        "As part of a DevOps team, supported project from requirements gathering, development, unit testing, integration testing to deployment and maintenance",
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