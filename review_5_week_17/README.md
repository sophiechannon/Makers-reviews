# Review 5 - School report V2
_Mon 12 September (Week 17)_

## Scorecard

### I use an agile process
_Rating: Steady_

You began your information gathering by first clarifying the inputs and outputs of the system, which was a great first step to take. Following this, you clarified on edge cases with the user, which was a great place to go, and resulted in you getting a very solid overall idea of the system.

You have also used your input-output table to record the behaviours for the core functionality and some of the edge cases.

You have done comprehensive information gathering concerning edge cases. The one thing that you could perhaps have considered is whether the grades are case agnostic or not.

### I can model anything
__Rating: Strong__

You were able to discern that this problem required state due to having to be able to call the addScores() method multiple times and keeping those test scores over the object's lifespan. This led you to the utilisation of a class with an initialiser that created this state variable.

You have properly adhered to the naming conventions for variables, methods and classes in Ruby. Just be aware that the acceptance criteria asked for add_scores() and not just add(). This would be a problem when your unit of code is integrated into a larger system that relies on the method name that was briefed in.

You were on the right path with your algorithm and made significant progress with the program.

### I can TDD anything
__Rating: Strong__

You were doing end-to-end testing based on the behaviours of the program which was a great way to encode the requirements of the program into the algorithm. This also increases the flexibility that you have in changing/refactoring the code.

Your tests progressed in incremental steps and helped you to isolate smaller problems within the larger problem.

You are adhering to the RGR cycle relatively closely and running tests to ensure that they fail on the red phases as expected.

### I can program fluently
__Rating: Strong__

You are very fluent with Ruby and RSpec syntax and language constructs. You are also aware of built-in methods in Ruby and how to use them correctly.

You were familiar with what data structures and methods were required to solve the problem.

The algorithm that you created made logical sense and was a good solution for this particular problem. You were well on your way to completing the problem.

### I can refactor anything
_Rating: Steady_

You were able to identify code that could be refactored on the refactor phases and the shift from each to map was a really neat refactor.

You could, however, still have broken the code up into multiple methods. One such method that you could have created was to take the logic determining if there was an uncounted count and extract it.

### I can debug anything
_Rating: Strong_
You have very good debugging skills and when faced with code that does not behave as expected, you can quickly analyse the error message, interpret it and come up with a hypothesis as to what the issue is and make an informed change to the code. You have displayed really methodical debugging skills.

### I write code that is easy to change
_Rating: Strong_

You did regular git commits on green and refactor phases in order to ensure that you had the latest working version available to you. This meant that if you made a change to the algorithm that broke the program that you were unable to undo, you could just roll back to a previous working version thereby helping increase the changeability of the code. Your commit messages also explain exactly what the scope of the work was that was covered in terms of the behaviours that were being tested.

You had your test suite properly decoupled from your implementation by making sure the tests were based solely on acceptance criteria, and not reliant on the current implementation. This makes changes to the code much easier as they will not break your test suite.

Your method and variable names were descriptive which resulted in code that is easy to read and subsequently easier to make changes to.

### I have a methodological approach to problem solving
_Rating: Steady_

You have prioritised core cases over edge cases to deliver immediate value to the client.

Your test progression was quite incremental and helped you to develop code that naturally evolved and was not focused on too much complexity at any time.

You have not included the refactor phase on each iteration of the RGR cycle and chose to refactor it toward the end of the development process. I would suggest that you take advantage of the refactor phases in order to develop clean code on each iteration of the RGR cycle. This helps to reduce the likelihood of complex debugging later on in the development of the program which has the potential of introducing bugs into the code.

### I can justify the way I work
_Rating: Steady_

You were very vocal about your process and the decisions that you have made. A potential addition to your communication would be to justify deviations from the process such as skipping refactor phases. This helps you to remain accountable to the process whilst at the same time showing an interviewer that all the decisions that you make are well-considered.
General feedback
You have done a really good job on this exercise despite how it was slightly different to what you have done in previous exercises. The one thing to focus on is regular refactors throughout the process where it is possible to refactor.

## Information gathering

- School reports company
- Teachers find out how students did on tests
- Aiming to assist teachers in understanding students performance on multiple tests in a year
- Build a system that accepts multiple test entries and reports on each test entry

| input | output | case | 
|--|---|---|
| add_scores("Green, Green, Red, Amber, Red") | "Test 1:\nGreen: 2\nAmber: 1\nRed: 2" | One test |
| add_scores("Green, Amber, Red") then add_scores("Amber, Amber, Green") | "Test 1:\nGreen: 1\nAmber: 1\nRed: 1\n---\nTest 2:\nGreen: 1\nAmber: 2\nRed: 0" | Two tests
| add_scores("Green,Dave,Whimsy,Red") | "Test 1:\nGreen: 1\nAmber: 0\nRed: 1\nUncounted: 2" | non- RGB examples are uncounter

add_scores()
generate_report()

- Include 0 counts
- non-RGB examples are uncounted
- Raise ArgumentError for non strings "Input must be a comma separated string"

