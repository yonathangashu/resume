#let resume(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  show link: underline
  show link: set underline(offset: 3pt)

  set page(paper: "us-letter", margin: (x: 0.5in, y: 0.5in))

  set text(size: 11pt, font: "Libertinus Serif")

  body
}

#let name_header(name) = {
  set text(size: 2.0em)
  [*#name*]
}

#let header(
  name: "John Doe",
  phone: "123-456-7890",
  email: "johndoe@su.edu",
  linkedin: "linkedin.com/in/johndoe",
  clearance: "CLEARANCE"
) = {
  align(center, block[
    #name_header(name) \
    #phone |
    #link("mailto:" + email)[#email] |
    #link("https://" + linkedin)[#linkedin] |
    #clearance 
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

// Government entries: wording below is copied verbatim from the cleared
// resume (prepub case on file). Only whole bullets have been removed
// (kept as comments). Do not reword without re-review.
#let gov_role(title, loc, date, ..points) = {
  pad(left: 0.5em, right: 0.5em, box[
    #grid(columns: (1fr, auto), column-gutter: 1em,
      align(left)[#emph(title), #loc],
      align(right)[#date])
    #v(-0.15em)
    #list(..points)
  ])
}

#let exp_item_DOD() = {
  set block(above: 0.5em, below: 0.5em)
  pad(left: 0.5em, right: 0.5em, box[
    #grid(columns: (1fr, auto),
      align(left)[*Department of Defense*],
      align(right)[Aug. 2023 - Present])
  ])
  gov_role(
    "Capabilities Development Specialist (Computer Network Exploitation Development)",
    "Oahu, HI", "May 2026 - Aug. 2026",
    [Conducted vulnerability analysis across multiple versions of target software and validated AI-generated proof of concept exploits through testing and debugging],
    [Developed multi-stage attack paths demonstrating pre-authenticated and authenticated remote code execution capabilities],
    [Identified and documented risks (artifacts, logging signatures, unencrypted payloads) to inform security considerations],
  )
  gov_role(
    "Capabilities Development Specialist (Control Networks Section)",
    "Fort Meade, MD", "May 2025 - Aug. 2025",
    [Employed reverse engineering techniques to examine network-enabled embedded devices and exploit firmware vulnerabilities],
    [Developed proof-of-concept tools enabling remote code execution],
    [Conducted static and dynamic analysis on control flow of functions of interest to enhance understanding of device runtime behavior],
    // [Collaborated with team members on debugging efforts, tool expansion opportunities, and sharing insights from individual efforts],
    [Authored comprehensive documentation outlining findings and usage of created capabilities],
  )
  gov_role(
    "Computer Systems Researcher (Artificial Intelligence Research Office)",
    "Fort Meade, MD", "May 2023 - Aug. 2024",
    [Worked alongside senior researchers to investigate the extraction of knowledge graphs (KGs) from unstructured text],
    [Collaborated on the development of a KG-RAG system to enable Knowledge Graph Question Answering],
    // [Developed methodologies for Named Entity Recognition and Relationship Extraction to populate KGs],
    // [Wrote Python scripts for efficient data processing and conversion to KG format],
  )
  gov_role(
    "Software Engineer Intern (Data Targeting Solutions Division)",
    "Fort Meade, MD", "Sep. 2022 - Aug. 2023",
    // [Member of the government development team within the Data Targeting Solutions division, contributing to the creation of enterprise applications using Cloud Native techniques in support of targeting],
    [Utilized Java to develop backend database management features for an internal web application and successfully integrated those functionalities into the frontend interface using VueJS],
    [Created a developer-sided API to streamline the creation of test agreements/datafeeds],
    // [As part of a DevOps team, supported project from requirements gathering, development, unit testing, integration testing to deployment and maintenance],
    // [Awarded a monetary award for exceptional contributions],
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
