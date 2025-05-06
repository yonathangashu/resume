#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, exp_item_DOD

#show: resume

#header(
  name: "Yonathan T. Gashu",
  phone: "202-816-2145",
  email: "yonathangashu@gmail.com",
  linkedin: "linkedin.com/in/ygashu",
  site: "ygashu.dev",
)

#resume_heading[Education]
#edu_item(
  name: "Georgia Institute of Technology",
  degree: "Bachelor of Science in Computer Science - GPA 3.93/4.0",
  location: "Atlanta, GA",
  date: "Graduating May 2027",
  [Specializing in #emph[Artificial Intelligence] & #emph[Information Internetworks]],
  [Coursework: Data Structures & Algorithms, Computer Organization, Computer Systems & Networking, Linear Algebra],
)

#resume_heading[Experience]
#exp_item_DOD()

#exp_item(
  role: "Verizon",
  name: "System Engineer Intern",
  location: "Remote",
  date: "Jul. 2022 - Aug. 2022",
  [Implemented GitLab and Jenkins for streamlined continuous integration and
    continuous deployment (CI/CD) processes, facilitating efficient code management],
  [Acquired expertise in essential systems, encompassing DevOps practices, AWS,
    microservices architecture, and cloud computing solutions],
)

#resume_heading("Awards and Additional Experience")
#skill_item(
  category: "Georgia Tech Provost Scholarship",
  skills: "Prestigious merit scholarship awarded to 60 out-of-state students, from a pool of thousands",
)
#skill_item(
  category: "Stokes Educational Scholarship",
  skills: "Selected to receive up to $30,000 in tuition scholarship annually, a year-round salary, and summer internships",
)
#skill_item(
  category: "VIP Member",
  skills: "Member of the Autonomous and Connected Driving Simulator VIP on the Cybersecurity subteam",
)

#resume_heading("Technical Skills")
#skill_item(
  category: "Languages",
  skills: "Java, Python, C#, TypeScript, HTML, CSS",
)
#skill_item(category: "Frameworks", skills: "React, Node.js, Vue, JUnit")
#skill_item(
  category: "Developer Tools",
  skills: "Linux, Git, Docker, Amazon Web Services, Google Cloud Platform, VS Code, IntelliJ, Jenkins, Agile, JIRA, Unity",
)
