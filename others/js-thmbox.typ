#import "@preview/js:0.1.3": *
#import "@preview/thmbox:0.3.0": *

#let js-article-style = js.with(
  lang: "ja",
  seriffont: "Latin Modern Roman",
  seriffont-cjk: "Harano Aji Mincho",
  sansfont: "Latin Modern Sans",
  sansfont-cjk: "Harano Aji Gothic",
  paper: "a4",
  fontsize: 10pt,
  baselineskip: auto,
  textwidth: auto,
  lines-per-page: auto,
  book: false,
  cols: 1,
  non-cjk: regex("[\u0000-\u2023]"),
  cjkheight: 0.88,
)

#let thmbox-setup = thmbox-init(counter-level: 1)
#let thmbox-sans-fonts = (
  "Latin Modern Sans",
  "Harano Aji Gothic",
)

#let exercise-counter = counter("exercise")
#let definition-counter = counter("definition")
#let theorem-counter = counter("theorem")

#let exercise-numbering(level: 1) = sectioned-counter(exercise-counter, level: level)
#let definition-numbering(level: 1) = sectioned-counter(definition-counter, level: level)
#let theorem-numbering(level: 1) = sectioned-counter(theorem-counter, level: level)

#let theorem-box-title(title) = if title == none {
  none
} else {
  [ (#title)]
}

#let inline-title-env(base-env) = (..args) => {
  let pa = args.pos()
  let named = args.named()

  assert(pa.len() <= 3, message: "inline-title-env accepts up to 3 positional arguments")

  if "title" in named {
    named.insert("title", theorem-box-title(named.at("title")))
  }

  if pa.len() == 0 {
    base-env(..named)
  } else if pa.len() == 1 {
    base-env(body: pa.at(0), ..named)
  } else if pa.len() == 2 {
    base-env(
      title: theorem-box-title(pa.at(0)),
      body: pa.at(1),
      ..named,
    )
  } else {
    base-env(
      variant: pa.at(0),
      title: theorem-box-title(pa.at(1)),
      body: pa.at(2),
      ..named,
    )
  }
}

#let exercise-env = inline-title-env(exercise.with(
  counter: exercise-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let definition-env = inline-title-env(definition.with(
  counter: definition-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let theorem-env = inline-title-env(theorem.with(
  counter: theorem-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let lemma-env = inline-title-env(lemma.with(
  counter: theorem-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let proposition-env = inline-title-env(proposition.with(
  counter: theorem-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let corollary-env = inline-title-env(corollary.with(
  counter: theorem-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let example-env = inline-title-env(example.with(
  counter: exercise-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let remark-env = inline-title-env(remark.with(
  counter: exercise-counter,
  color: black,
  title-separator: [],
  sans-fonts: thmbox-sans-fonts,
  title-fonts: thmbox-sans-fonts,
))
#let proof-env = proof
