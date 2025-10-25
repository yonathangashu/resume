#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, exp_item_DOD

#show: resume

#header(
  name: "Yonathan T. Gashu",
  phone: "202-816-2145",
  email: "yonathangashu@gmail.com",
  linkedin: "linkedin.com/in/ygashu",
  clearance: strong("Holding TS//SCI Clearance since 2022")
)

#resume_heading[Education]
#edu_item(
  name: "Georgia Institute of Technology",
  degree: "Bachelor of Science in Computer Science - GPA 3.93/4.0",
  location: "Atlanta, GA",
  date: "Graduating May 2027",
  [Specializing in #emph[Systems & Architecture] and #emph[Devices]],
  [Coursework: Mobile & Ubiquitous Computing, Computer Organization & Architecture, Computer Systems & Networking, Computer Networking, Object-Oriented Programming, Data Structures & Algorithms],
)

#resume_heading[Experience]
#exp_item_DOD()

/*
#exp_item(
  role: "Verizon",
  name: "System Engineer Intern",
  location: "Remote",
  date: "Jul. 2022 - Aug. 2022",
  [Assisted in setting up Jenkins for continuous integration and continuous deployment (CI/CD) 
    as a part of a DevOps team, contributing to efficient code management processes],
  [Gained foundational knowledge in DevOps practices, AWS basics, microservices architecture, 
    and cloud computing solutions],
)
*/

#exp_item(
  role: "The Hive Makerspace",
  name: "Student Researcher",
  location: "Atlanta, GA",
  date: "Aug. 2025 - Present",
  [Led ECE makerspace operations on the electronics lab and embedded devices
  attracting over 7500 monthly visitors],
  [Delivered training sessions on embedded systems and benchtop tools for 200+ students/semester, ensuring 100% proficiency],
)

#exp_item(
  role: "Autonomous & Connected Driving Simulator VIP",
  name: "Cybersecurity Subteam (Undergraduate Research)",
  location: "Atlanta, GA",
  date: "Aug. 2024 - May 2025",
  [Engineered multimodal biometric data pipelines (_EEG, ECG, eye tracking_) in _Python/Matlab_ for preprocessing and visualization of driver states, supporting cybersecurity-focused experiments on drivers during simulated attacks],
  [Extended _Unity_ driving simulation by integrating warning systems and threat event triggers to simulate cyberattacks]
)
#resume_heading("Projects")
#project_item(
  name: "Rust-PWN",
  skills: "Rust",
  date: "Aug. 2025 - Present",
  [Building a exploit tooling library in Rust for binary exploitation and reverse engineering challenges],
)

#project_item(
  name: "Raycaster",
  skills: "C++, SDL2",
  date: "Aug. 2024 - Dec. 2024",
  [Built a Wolfenstien-style 3D raycasting engine from scratch in C++ using SDL2, handling rendering pipeline, collision detection, 2D/3D graphics math, map and texture parsing, skybox generation, and ray traversal optimization]
)
/*
#exp_item(
  role: "Verizon",
  name: "System Engineer Intern",
  location: "Remote",
  date: "Jul. 2022 - Aug. 2022",
  [Assisted in setting up Jenkins for CI/CD
    as a part of a DevOps team, contributing to efficient code management processes],
  [Gained expertise in DevOps practices, AWS, microservices architecture, 
    and cloud computing solutions],
)
*/
/*
#resume_heading("Awards and Additional Experience")
#skill_item(
  category: "Georgia Tech Provost Scholarship",
  skills: "Prestigious merit scholarship awarded to 60 out-of-state students, from a pool of thousands",
)
#skill_item(
  category: "Stokes Educational Scholarship",
  skills: "Selected to receive up to $30,000 in tuition scholarship annually, a year-round salary, and summer internships",
)

*/
#resume_heading("Technical Skills")
#skill_item(
  category: "Languages",
  skills: "C, Java, C++, Python, C#, Assembly (ARM64), JavaScript",
)

#skill_item(category: "Frameworks", skills: "React, Node.js, VueJS, JUnit")
#skill_item(
  category: "Developer Tools",
  skills: "Ghidra (Firmware Analysis, Reverse Engineering), Atlassian tools (Bitbucket, Confluence, Jira), Linux, Git, VMware, Wireshark, Docker, Amazon Web Services, Google Cloud Platform, VS Code, IntelliJ, Jenkins, Agile, Unity",
)
