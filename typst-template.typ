#let psc-report(
  title: "title",
  author: "author",
  email: "email",
  proj: "proj",
  body,
) = {

 set text(
    font: "Open Sans",
    size: 12pt,
  )

 set page(
    "us-letter",
    margin: (left: 1in, right: 1in, top: 0.7in, bottom: 1in),
    background: place(top, rect(fill: rgb("#CFB97D"), width: 100%, height: 0.5in)),
    header: align(
      horizon,
      grid(
        columns: (20%, 60%, 20%),
        align(left, text(size: 25pt, fill: white, weight: "extrabold", title)),
        align(center, text(size: 15pt, fill: black, weight: "semibold", proj)),
        align(right, 
              grid(rows: (60%, 40%),
                   align(bottom, text(size: 10pt, fill: black, weight: "bold", author)),
                   align(center, text(size: 5pt, fill: white, weight: "bold", email))),
      ))),
    footer: align(
      grid(
        columns: (45%, 10%, 45%),
        align(left, image("img/CUAnschutz_h_clr.png", height: 50%)),
        align(center, text(fill: rgb("#CFB97D"), size: 12pt, counter(page).display("1"))),
        align(right, image("img/sph_wm_3icons_clr-black.png", height: 50%)),
      )
    )
  )

  body
}

