#let hrule = [ #line(length: 100%) ]

#let bib(it) = [
    #set list(
        marker: [--],
    )

    #it
]

#let template(doc) = [
    #set text(
        font: "Noto Sans",
        size: 12pt,
    )

    #set par(
        leading: 0.75em
    )

    #show selector(heading.where(level: 1)): it => [
        #pad(left: 1.0em, top: 1.0em, it)
    ]

    #show "FOSS": foss => [ #emph(foss) ]

    #set list(
        indent: 0.55em,
        marker: sym.arrow.r.curve,
    )

    #show selector(heading.where(level: 3)): it => [
        #pad(left: 2.0em, top: 1.0em, it)
    ]

    #show heading: it => [
        #set text(font: "Raleway")
        #it
    ]

    #set quote(block: true)

    #show link: it => [
        #emph(underline(text(navy)[#it]))
    ]

    #doc
]

