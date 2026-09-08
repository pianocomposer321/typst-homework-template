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

// #grid(fill: rgb("e4e5ea"), columns: (1fr,) * columns, inset: 1em, align: center, [
// // #grid(gutter: 2pt, align: center, [
// $overline(x)_"men" = 1$
// ], [
// $s_"men"           = 1$
// ], [
//   hi
// ])

// #let given(columns: 1, ..cells) = {
//   text("Given:", weight: "bold")
//   grid(fill: rgb("e4e5ea"), columns: (1fr,) * columns, inset: 0.75em, align: center, ..cells)
// }

/*
#given(columns: 2, (x_m: (10, [$$]))
*/

// #let given-in(columns: 1, bindings, block) = {
//   text("Given:", weight: "bold")
//
//   let cells = ()
//   for (_, binding) in bindings {
//     cells.push([$binding.at(#1) = #(binding.at(0))$])
//   }
//   grid(fill: rgb("e4e5ea"), columns: (1fr,) * columns, inset: 0.75em, align: center, ..cells)
//
//   let bindings = bindings
//     .pairs()
//     .map(((key, value)) => (key, value.at(0)))
//     .to-dict()
//   block(bindings)
// }

// #let given(numbering: "(1)", ..blocks) = {
//   set math.equation(numbering: numbering, supplement: "Given")
//   counter(math.equation).update(0)
//
//   block(breakable: false)[
//     *Given: *
//     #for b in blocks.pos() {
//      [#b]
//     }
//   ]
// }

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
  // show par: set block(sticky: true)
  // show math.equation.where(block: true): set block(sticky: true)

  // show block: it => {
  //   let is_last = context {
  //     let next_blocks = query(selector(<block>).after(here())).len()
  //     return next_blocks == 0
  //   }
  //
  //   text(is_last)
  //
  //   // // if not is_last {
  //   // //   block(sticky: true, it)
  //   // // } else {
  //   //   it
  //   // // }
  // }

  heading(level: level, [#prefix#nu#suffix])
  body

  // if keep-together {
  //   // if not body.has("children") { return body }
  //   //
  //   // for (i, child) in body.children.enumerate() {
  //   //   if i == body.children.len() - 1 { return }
  //   //   let next = body.children.at(i + 1)
  //   //
  //   //   if child.func() == math.equation and child.has("block") and child.block == true {
  //   //     continue
  //   //   }
  //   //
  //   //   if next.func() == math.equation and next.has("block") and next.block == true {
  //   //     block(breakable: false, width: 100%, {
  //   //       child
  //   //       next
  //   //     })
  //   //   } else {
  //   //     child
  //   //   }
  //   // }
  //
  //
  //   if not body.has("children") { return body }
  //
  //   let groups = body.children.split(parbreak())
  //
  //   for (i, group) in groups.enumerate() {
  //     let content = group.join()
  //
  //     if i+1 == groups.len() { content; break }
  //
  //     let next_group = groups.at(i+1)
  //     let next = next_group.first()
  //     if next.func() == math.equation and next.has("block") and next.block == true {
  //       block(sticky: true, width: 100%, content)
  //     } else {
  //       content
  //     }
  //   }
  //
  // //   let groups = body.children.split(parbreak())
  // //   let n = groups.len()
  // //
  // //   for (i, group) in groups.enumerate() {
  // //     // let content = group.join()
  // //
  // //     // if i < n - 1 {
  // //     if group.len() < 1 { continue }
  // //     let current = group.first()
  // //     if current.func() == math.equation and current.has("block") and current.block == true {
  // //       if i > 0 {
  // //         let prev = groups.at(i - 1).last()
  // //         if prev.func() == par {
  // // // This needs to modify the par not the math block
  // //           return block(sticky: true, width: 100%, content)
  // //         }
  // //       }
  // //     } else {
  // //       group.join()
  // //     }
  // //   }
  // } else {
  //   body
  // }
}

#let part(name, body, prefix: "Part (", suffix: ")") = ques(name, body, prefix: prefix, suffix: suffix, level: 3)

#let ans(body) = {
  // set math.equation(block: true)
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
  // #show heading.where(level: 3): set text(size: 14pt)

  #header(title, name)

  #doc
]
