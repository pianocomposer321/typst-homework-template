#let xbar = $overline(x)$
#let yhat = $hat(y)$
#let vector(c) = $bold(arrow(#c))$
#let ba = $bold("a")$
#let bb = $bold("b")$
#let bc = $bold("c")$
#let bv = $bold("v")$
#let bu = $bold("u")$
#let bw = $bold("w")$
#let bp = $bold("p")$
#let bx = $bold("x")$
#let by = $bold("y")$
#let bn = $bold("N")$
#let be = $bold("e")$
#let bq = $bold("q")$
#let b0 = $bold("0")$
#let xhat = $bold(hat("x"))$
#let qc = $quad checkmark$

#let tp(x) = $#x^T$
#let hp(x) = $(#x)^(1\/2)$

#let ang(..args) = {
  let content = args.pos().join($, $)
  $lr(chevron.l #content chevron.r)$
}

#let where(content) = {
  block[$
    "where" #content
  $]
}

#let header(title, name) = {
  block(width: 100%, sticky: true, {
    align(center, text(
      size: 17pt,
      weight: "bold",
      title,
    ))

    align(center, text(name))
  })
}

#let given(body) = {
  set math.equation(block: true)
  block(sticky: true, breakable: false, width: 100%)[
    *Given:*
    #body
  ]
}

#let proposition(body) = {
  block(breakable: false, sticky: true, width: 100%)[
    *Proposition:*
    #body
  ]
}

#let DD = $bold(D)$
#let LL = $bold(L)$
#let BB = $cal(B)$
#let Bq = $cal(B)_q$

#let lap = $cal(L)$
#let ilt = $cal(L)^(-1)$

#let inv(a) = $#a^(-1)$

#let qed = [#v(0.2em)#h(1fr)$square.big$]

#let proof(content) = {
  block(sticky: true, underline[Proof:])

  block(sticky: true, width: 100%, content)
  qed
}

#let ques(nu, body, prefix: "Problem #", suffix: none, level: 2, keep-together: true) = {
  heading(level: level, [#prefix#nu#suffix])
  body
}

#let part(name, body, prefix: "Part (", suffix: ")") = ques(name, body, prefix: prefix, suffix: suffix, level: 3)

#let ans(body) = {
  pad(0.5em, rect(stroke: black, inset: 0.75em)[#body])
}

#let augmat(..args) = $mat(augment: #(-1), ..args)$
#let raugmat(..args) = $mat(align: #right, augment: #(-1), ..args)$
#let detmat(..args) = $mat(delim: "|", ..args)$
#let rmat(..args) = $mat(align: #right, ..args)$

#let row-table(rows: 1, align: right, ..cells) = {
  let cell-list = cells.pos()
  let col-count = calc.ceil(cell-list.len() / rows)
  
  table(
    align: align,
    columns: col-count,
    ..cell-list
  )
}

#let homework(title, name, doc) = [
  #set page("us-letter", margin: 0.75in)
  #set math.mat(delim: "[", gap: 0.75em)
  #set image(width: 50%)

  #header(title, name)

  #doc
]
