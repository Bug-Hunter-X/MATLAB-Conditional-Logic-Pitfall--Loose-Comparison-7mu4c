# MATLAB Conditional Logic Pitfall: Loose Comparison

This repository demonstrates a common, yet subtle, error in MATLAB's conditional logic that can lead to unexpected behavior.

The issue arises from the implicit loose comparison in MATLAB's `if` statements.  When comparing numbers, MATLAB's loose comparison (using `==`) can sometimes produce unexpected results, particularly when floating-point numbers are involved or when comparing against exactly 10. 

**Bug:**
The `myFunction` function in `bug.m` showcases this problem. The intention might be that if `x` is strictly greater than 10, `x^2` is returned; otherwise, `x * 2` is returned. However, when `x` is exactly 10, due to the loose comparison, it will follow the 'else' branch, which is unexpected for someone who might've expected a strict comparison.

**Solution:**
The `bugSolution.m` file provides a corrected version of the function that explicitly uses strict comparisons using `>`.  This resolves the ambiguity by ensuring that the correct branch is executed only when `x` is greater than 10.

**How to Reproduce:**
1. Clone this repository.
2. Open `bug.m` and `bugSolution.m` in MATLAB.
3. Run the example usage in `bug.m`.  Notice the unexpected result.
4. Run the same example in `bugSolution.m`. Observe that the output now correctly reflects the intended behavior.