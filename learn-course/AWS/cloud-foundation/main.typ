#import "lib.typ": *
// you should write content in exampledoc
#show: template.with(
  title: [ AWS Cloud Foundation ],
  short_title: "Mobile Application Development",
  description: [
    Notes based on lectures for Mobile Application Development (Computer Science)\ at the Royal University of Phnom Penh 2026
  ],
  date: datetime(year: 2026, month: 12, day: 25),
  authors: (
    (
      name: "Sarath Rithyyanouk",
      link: "https://yanouk.dev",
    ),
  ),

  // lof: true,
  // lot: true,
  // lol: true,
  // bibliography_file: "refs.bib",
  paper_size: "a4",
  // landscape: true,
  cols: 1,
  text_font: "DejaVu Sans Mono",
  code_font: "Iosevka Term",
  accent: "#1A41AC", // blue
  h1-prefix: "Lecture",
  colortab: true,
)

#include "content/exampledoc.typ"
