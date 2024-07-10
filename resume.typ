#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, exp_item_NSA

#show: resume

#header(
  name: "Yonathan T. Gashu",
  phone: "202-816-2145",
  email: "yonathangashu@gmail.com",
  linkedin: "linkedin.com/in/ygashu",
)

#resume_heading[Education]
#edu_item(
  name: "Georgia Institute of Technology",
  degree: "Bachelor of Science in Computer Science - GPA 3.85/4.0",
  location: "Atlanta, GA",
  date: "Graduating May 2027",
  [Specializing in #emph[Artificial Intelligence] & #emph[Information Internetworks]],
  [Coursework: Computer Organization, Data Structures & Algorithms, Object-Oriented
    Programming, Linear Algebra],
)

#resume_heading[Experience]

#exp_item_NSA()

#exp_item(
  role: "Verizon",
  name: "System Developer Intern",
  location: "Remote",
  date: "Jul. 2022 - Aug. 2022",
  [Implemented GitLab and Jenkins for streamlined continuous integration and
    continuous deployment (CI/CD) processes, facilitating efficient code management],
  [Acquired expertise in essential systems, encompassing DevOps practices, AWS,
    microservices architecture, and cloud computing solutions],
)

#resume_heading("Projects")
#project_item(
  name: "C# Game Development",
  skills: "Unity Game Engine",
  date: "June 2021 - Present",
  [Utilized C\# scripts in Visual Studio Code to manipulate Unity's 3D Rigidbody
    Physics and create first-person and third-person perspective player movement
    systems],
  [Developed a modular weapon system, which allows for more efficient
    implementation of new weapons & avoids redundancy in the code/methods],
  [Created a grappling hook through the combined use of Unity's Physics class,
    Unity's LineRenderer, the player's camera, and the player's input, thus giving
    the pistol weapon dual functionality],
)
#resume_heading("Awards")
#skill_item(
  category: "Stokes Educational Scholarship",
  skills: "Selected to receive up to $30,000 in tuition scholarship, a year-round salary, and summer internships",
)
#skill_item(
  category: "Monetary Award",
  skills: "Granted by the Department of Defense for achieving high quality results as a Software Developer Intern",
)
#skill_item(
  category: "Georgia Tech Provost Scholarship",
  skills: "One of 60 students awarded $85,000 over four years",
)
#resume_heading("Technical Skills")
#skill_item(category: "Languages", skills: "Java, Python, C#, Rust")
#skill_item(category: "Frameworks", skills: "Vue, React, JUnit")
#skill_item(
  category: "Developer Tools",
  skills: "Linux, Git, Docker, Amazon Web Services, Google Cloud Platform, VS Code, IntelliJ, Jenkins, JIRA, Unity",
)
