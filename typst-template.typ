
// format with custom parameters
#let psc-report(
  title: none,
  town : "town",
  body,
) = {
  // --- text default ---
  set text(
    font: "Open Sans",
    size: 11pt,
  )
  
// --- page ---
 set page(
    "us-letter",
    margin: (left: 1in, right: 1in, top: 0.7in, bottom: 1in),
    background: place(top, rect(fill: rgb("15397F"), width: 100%, height: 0.5in)),
    header: align(
      horizon,
      grid(
        columns: (80%, 20%),
        align(left, text(size: 20pt, fill: white, weight: "bold", "Housing Data Profiles")),
        align(right, text(size: 12pt, fill: white, weight: "bold", town)),
      ),
    ),
    footer: {
      grid(
        columns: (40%, 60%),
        align(horizon, text(fill: rgb("15397F"), size: 10pt, counter(page).display("1"))),
        align(right, image("psclogo.svg", height: 300%)),
      )
    }
  )

  // --- headings ---
  show heading.where(level: 1): it => [
    #set text(fill: rgb("15397F"), size: 17pt, weight: "bold")
    #block(it.body)
  ]

  // --- body ---
  body
}

