# Review 4 - Sum strings
_Tue 30 August (Week 15)_

## Scorecard

### I use an agile process
_Rating: Steady_

You were quite meticulous with your information gathering and managed to not only acquire enough information to begin solving the problem, but you also identified a few edge cases and some finer details such as inputs that are not in the correct format or of type string, longer sum string inputs that will always have the same operator within them and absence of expressions with more than 1 type of operator.

There are a few edge cases that missed though such as division by zero and an empty string.

Finally your input-output table was detailed with examples you extrapolated from the example that you were given.

### I can model anything
_Rating: Strong_

You chose the appropriate abstraction (a method) for this exercise as a class would not be appropriate due to stateless nature of the problem. You also adhered to naming best practices for your method by using snake_case and an actionable method name. The approach your algorithm takes also makes sense as splitting the sum string into an array and iterating through said array is one of the easiest ways to go about solving the problem

### I can TDD anything
_Rating: Strong_

Your tests were simple and you implemented the RGR cycle to the letter. There isn’t much I can recommend as far as improvements go. I believe you have a good grasp of TDD and by extension the RGR cycle. Keep this up.

### I can program fluently
_Rating: Strong_

You showed comfort in your use of the command line. You are familiar with language constructs along with string and array manipulation. You are also aware of and made use of built-in methods like map. Your algorithm was lgoical in that it split the sum string into an array and then iterated through the array to determine the result of the described sum.

### I can refactor anything
_Rating: Steady_

You made a couple of refactors which include generalising your solution for sums involving the addition operator and then subsequent operators. Refactoring can also mean extracting more methods for parts of your method that are complex enough to stand alone. It can also mean making your code run more efficiently.

### I can debug anything
_Rating: Steady_

You are familiar with common errors and instantly able to tell why tests fail as a result. You did not make random changes to your code to resolve errors.

### I write code that is easy to change
_Rating: Strong_

You used git appropriately by making commit each time you entered the green phase. Your commit messages were also descriptive. Your test suite adopted a behavior first approach which decoupled it from you method. Your variable names were also descriptive enough that it was easy to tell what they represent. Your first refactor generalised your solution for simple expressions containing the addition operator.

### I have a methodological approach to problem solving
_Rating: Strong_

You followed a regular RGR cycle and prioritised core requirements over edge cases. Your tests progressed in a logical order in that each test represented a small leap in complexity slightly different version from the one that preceded it. I like that you conducted research on aspects of array manipulation you weren’t sure about and ended up using a built-in methods which are always the most efficient way to perform a task.

### I can justify the way I work
_Rating: Strong_

You vocalised your process very well throughout the session such that it was always easy to tell what you were doing and follow your thought process. It was also easy to understand why you made some of the decisions you made. You pitched your comments at a good level and your reasoning was sound.

### General feedback
Your understanding and implementation of TDD and the RGR cycle are very good and in the end, you had a working solution which is commendable. You also had enough time to address edge cases which also shows great programming acumen. I think you will also do well in the next exercise and deepen your understanding. Well done.

## Brief
- company that makes academic maths papers easier to read
- product scans through the maths paper looking for sums
- it extracts the sums as strings
- the strings are evaluated
- the evaluated results is outputted along with the extracted sum string
- more modern tech stack, prototype that extracts sum strings

## Clarification
- if longer than 2 numbers, operator will always be the same
- will always be a sum  as a string
- There will always be a space each side of the operator
- operators are + - / * 

| input | output |
|-------|--------|
| "1 + 1" | ["1 + 1", 2.0] |
| "1 + 1 + 1" | ["1 + 1 + 1", 3.0] |
| "1.5 + 1.75" | ["1.5 + 1.75", 3.25] |
| 1 + 1 | ArgumentError "Input must be a string" |
| ["1 + 1"] | ArgumentError "Input must be a string" |
| "1+1" | MathError "Input must be a valid mathematical string separated by spaces" |
| "2 - 1" | ["2 - 1", 1.0]