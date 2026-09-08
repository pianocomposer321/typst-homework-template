#import "@local/homework:1.2.0": *
// This would be `#import "lib.typ": *` instead if the file is local

#show: homework.with("Advanced Geometry HW 1.1", "Tad Markle") // Change to reflect the class and name of student/assignment
#show heading.where(level: 3): set text(size: 12pt)

#ques(1)[
  - Leg: $4$

    True Hypotenuse: $sqrt(1 + 4^2) = sqrt(17) approx 4.12$ \
    Estimated Hypotenuse: $4 + 1/3 = 13/3 approx 4.33$ \
    Percent Error: $(4.12 - 4.33)/4.12 approx -0.0509 = ans(-5.09%)$\

  - Leg: $5$

    True Hypotenuse: $sqrt(1 + 5^2) = sqrt(26) approx 5.10$ \
    Estimated Hypotenuse: $5 + 1/3 approx 5.33$ \
    Percent Error: $(5.10 - 5.33)/5.10 approx -0.0451 = ans(-4.51%)$\

  - Leg: $6$

    True Hypotenuse: $sqrt(1 + 6^2) = sqrt(37) approx 6.08$ \
    Estimated Hypotenuse: $6 + 1/3 approx 6.33$ \
    Percent Error: $(6.08 - 6.33)/6.08 approx -0.0411 = ans(-4.11%)$\

  - Leg: $7$

    True Hypotenuse: $sqrt(1 + 7^2) = sqrt(50) approx 7.07$ \
    Estimated Hypotenuse: $7 + 1/3 approx 7.33$ \
    Percent Error: $(7.07 - 7.33)/7.07 approx -0.0368 = ans(-3.68%)$\
]

#ques(4)[
  Choose $b = 1''$. Then with the pythagorean theorem, we find that the
  hypotenuse is $sqrt(2)'' approx 1.5''$, whereas with the one-third rule,
  the hypotenuse comes out to be $1 + 1/3 '' approx 1.33'' approx 1.25'' != 1.5''$.
  #ans[So yes, we can detect that the one-third rule is false using $b=1''$.]

  Full table:
  #table(columns: 5, align: right,
    $b$, [Pythagorean], [Pythagorean Rounded], [One-third rule], [One-third rule rounded],
    $1$, $sqrt(1^2 + 1^2) = sqrt(2)$, $1.5$, $1 + 1/3$, $1.25$,
    $1.25$, $sqrt(1^2 + 1.25^2) = sqrt(2.5625)$, $1.5$, $1 + 1.25 / 3$, $1.5$,
    $1.5$, $sqrt(1^2 + 1.5^2) = sqrt(3.25)$, $1.75$, $1 + 1.5 / 3$, $1.5$,
    $1.75$, $sqrt(1^2 + 1.75^2) = sqrt(4.0625)$, $2$, $1 + 1.75 / 3$, $1.5$,
    $2$, $sqrt(1^2 + 2^2) = sqrt(5)$, $2.25$, $1 + 2 / 3$, $1.75$,
    $2.25$, $sqrt(1^2 + 2.25^2) = sqrt(6.0625)$, $2.5$, $1 + 2.25 / 3$, $1.75$,
    $2.5$, $sqrt(1^2 + 2.5^2) = sqrt(7.25)$, $2.75$, $1 + 2.5 / 3$, $1.75$,
    $2.75$, $sqrt(1^2 + 2.75^2) = sqrt(8.5625)$, $3.0$, $1 + 2.75 / 3$, $2.0$,
    $3$, $sqrt(1^2 + 3^2) = sqrt(10)$, $3.25$, $1 + 3 / 3$, $2.0$,
  )
]

#ques(5)[
  You could estimate by buying a small amount and using it, then
  making an educated guess about what proportion of the total area
  of the field was covered using just one box. You could then
  extrapolate to the number of boxes you would need for the whole
  field.

  Alternatively, you could measure the whole field, and spread the
  seed in such a way that makes it easy for you to measure the exact
  area you covered. This would give you a more precise estimate.

  Finally, if the box tells you how much area it is supposed to
  cover, you could measure the field beforehand and avoid having to
  go to the store even twice.
]

#ques(6)[
  Yes. With $T$ at that point, $triangle S E T$ would be equilateral, meaning
  all its interior angles would be $60 degree$.

  So $theta_1 = 60 degree$, and $theta_2 = 180 degree - 60 degree = 120 degree.$

  These are the only possible values for $theta_1$ and $theta_2$ between $0 degree$ and $180 degree$.

  If $-180 degree < theta < 0 degree$ values are also considered, then there is
  one other possible pair: $theta_1 = -60 degree, theta_2 = -120 degree.$

  If all real values are considered, then there are infinitely many pairs:
  $theta_1 = 60 degree + 360 degree dot k, theta_2 = 120 degree + 360 degree
  dot k "for all" k in ZZ.$
]

#ques(7)[
  Let $d$ denote the distance between the experimenter and the assistant, $h$
  the height of the kite above the ground, and $l$ the length of the kite
  string. Then the height of the kite from the ground can be calculated using
  the pythagorean theorem:
  $
  l^2 = d^2 + h^2 \
  h^2 = l^2 - d^2 \
  ans(equation(h = sqrt(l^2 - d^2)))
  $
]

#ques(8)[
  In general, I think that any statement will be easier to accept (either as a
  theorem or as an axiom) if it is intuitive, unsurprising, concise, and easily
  understood. However, not every statement that should be accepted meets even a
  single one of these criteria, which is why they are not the actual standards
  that mathematicians apply.

  Most statements in geometry require proof, and (assuming the proof is valid)
  seeing a proof of a given statement should help an individual person to
  believe it.

  Axioms (such as Euclid's extendibility axiom) on the other hand do not
  require proof. This is because geometers are not asking other geometers to
  "believe" them in the same way they do for theorems - they are asking them to
  *accept* them. Acceptibility is a different standard from believeability,
  which is why axioms are held to a different standard compared to theorems.
]

////////////////////////////////
// NOT IN ORIGINAL ASSIGNMENT //
// Just for demonstration     //
////////////////////////////////


#ques(133)[
  #proposition[The square root of 2 is irrational]

  #proof[
    Proof goes here.
  ]

  Note that the "QED" box is added automatically at the end of the proof block.
]
