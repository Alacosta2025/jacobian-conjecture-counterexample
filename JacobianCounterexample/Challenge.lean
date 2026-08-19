import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

noncomputable def f1_e (e : Rat) (x y z : Rat) : Rat :=
  x^3*y^3*z + 9*x^2*y^4 + 3*x^2*y^2*z + 21*x*y^3 + 3*x*y*z + 12*y^2 + z

noncomputable def f2_e (e : Rat) (x y z : Rat) : Rat :=
  x^3*y^2*z + 9*x^2*y^3 + 2*x^2*y*z + 12*x*y^2 + x*z + y

noncomputable def f3_e (e : Rat) (x y z : Rat) : Rat :=
  e*x - (3*e/2)*x^2*y - (e/6)*x^3*z

noncomputable def F_e (e : Rat) (p : Rat × Rat × Rat) : Rat × Rat × Rat :=
  (f1_e e p.1 p.2.1 p.2.2, f2_e e p.1 p.2.1 p.2.2, f3_e e p.1 p.2.1 p.2.2)

/-- The Jacobian determinant of `F_e` is identically the nonzero constant `-e`. -/
theorem jacobian_det_family (e x y z : Rat) :
    (3*x^2*y^3*z + 18*x*y^4 + 6*x*y^2*z + 21*y^3 + 3*y*z)
      * ((2*x^3*y*z + 27*x^2*y^2 + 2*x^2*z + 24*x*y + 1) * (-(e/6)*x^3)
        - (x^3*y^2 + 2*x^2*y + x) * (-(3*e/2)*x^2))
  - (3*x^3*y^2*z + 36*x^2*y^3 + 6*x*y*z + 63*x*y^2 + 3*x*z + 24*y)
      * ((3*x^2*y^2*z + 18*x*y^3 + 4*x*y*z + 12*y^2 + z) * (-(e/6)*x^3)
        - (x^3*y^2 + 2*x^2*y + x) * (e - 3*e*x*y - (e/2)*x^2*z))
  + (x^3*y^3 + 3*x^2*y^2 + 3*x*y + 1)
      * ((3*x^2*y^2*z + 18*x*y^3 + 4*x*y*z + 12*y^2 + z) * (-(3*e/2)*x^2)
        - (2*x^3*y*z + 27*x^2*y^2 + 2*x^2*z + 24*x*y + 1) * (e - 3*e*x*y - (e/2)*x^2*z))
  = -e := by
  sorry

/-- For any nonzero `e`, `F_e` is not injective: it identifies three distinct points. -/
theorem F_e_not_injective (e : Rat) (he : e ≠ 0) :
    ∃ p q : Rat × Rat × Rat, p ≠ q ∧ F_e e p = F_e e q := by
  sorry
