#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, exp_item_DOD

#show: resume

// Red placeholders: fill these in before compiling the version you send.
#let todo(x) = text(fill: red)[#x]

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
  degree: "Bachelor of Science in Computer Science - GPA 3.90 (Major) / 3.88 (Overall)",
  location: "Atlanta, GA",
  date: "Graduating May 2027",
  [Specializing in #emph[Systems & Architecture] and #emph[Devices]],
  [Coursework: Design of Operating Systems, Compilers, Computer Architecture, Computer Networking, Algorithms],
)

#resume_heading[Experience]
#exp_item_DOD()

#exp_item(
  role: "Cyber-Physical Security Lab (CPSec)",
  name: "Undergraduate Researcher, Binary Analysis for Bill of Materials (BABOM)",
  location: "Atlanta, GA",
  date: "Jan. 2026 - Present",
  [Developing ground-truth methodology for identifying and slicing third-party library code out of statically linked firmware binaries using function call graph extraction],
  [Achieved \~99% function recovery on unstripped and \~93% on stripped curl/OpenSSL binaries (_angr, pyhidra, Ghidra_)],
)

/*
#exp_item(
  role: "The Hive Makerspace",
  name: "Student Researcher",
  location: "Atlanta, GA",
  date: "Aug. 2025 - Present",
  [Led ECE makerspace operations on the electronics lab and embedded devices attracting over 7500 monthly visitors],
  [Delivered training sessions on embedded systems and benchtop tools for 200+ students/semester],
)
*/

/*
#exp_item(
  role: "Autonomous & Connected Driving Simulator VIP",
  name: "Cybersecurity Subteam (Undergraduate Research)",
  location: "Atlanta, GA",
  date: "Aug. 2024 - Present",
  [Engineered multimodal biometric data pipelines (_EEG, ECG, eye tracking_) in _Python/Matlab_ and extended a _Unity_ driving simulation with threat event triggers to study drivers during simulated cyberattacks],
)
*/

#resume_heading("Projects")
#project_item(
  name: "Requiem",
  skills: "Rust, x86-64, Intel VT-x",
  date: "Mar. 2026 - Present",
  [Building a Type-1 bare-metal hypervisor in Rust for x86-64 using Intel VT-x, booting from UEFI],
  [Implemented VMX enablement: page-aligned VMXON region from a bump allocator over UEFI-allocated memory and a verified `vmxon` entry into VMX root operation; VMCS setup in progress],
)
#project_item(
  name: "xv6 Kernel Extensions (CS3210)",
  skills: "C, x86",
  date: "Aug. 2026 - Present",
  [Implemented copy-on-write fork and lazy zero-page allocation in the xv6 virtual memory subsystem],
  [Added kernel backtrace, a `setscheduler` syscall, and `clone`-based threading],
)
#project_item(
  name: "IP Camera Vulnerability Research",
  skills: "Embedded, Firmware RE",
  date: "Apr. 2026 - Present",
  [Gained a root shell on a Uniview IP camera through UART and U-Boot, and extracted the full filesystem for offline analysis],
  [Mapping the device's network attack surface toward a remotely exploitable vulnerability and CVE disclosure],
)

#project_item(
  name: "LoRa Enabled Wearable Off-grid Communication (LEWOC)",
  skills: "Rust, Embedded Systems",
  date: "Aug. 2025 - Dec. 2025",
  [Built an encrypted LoRa text-messaging wearable in `no_std` Rust/Embassy on RP2350 with Ascon encryption, a TFT display UI, and Bluetooth app connectivity, achieving 1000-foot range],
)

/*
#project_item(
  name: "Raycaster",
  skills: "C++, SDL2",
  date: "Aug. 2024 - Dec. 2024",
  [Built a Wolfenstein-style 3D raycasting engine from scratch in C++ using SDL2, handling rendering pipeline, collision detection, 2D/3D graphics math, map and texture parsing, skybox generation, and ray traversal optimization]
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
  skills: "C, C++, Rust, Python, Java, C#, Assembly (ARM64, x86-64)",
)
#skill_item(
  category: "Reverse Engineering",
  skills: "Ghidra, Binary Ninja, GDB, angr, pyhidra, Wireshark",
)
#skill_item(
  category: "Systems & Tools",
  skills: "Linux, QEMU, KVM, UART/U-Boot, Git, Docker, VMware",
)
