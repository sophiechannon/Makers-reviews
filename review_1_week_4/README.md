# Review one - School reports
_Thu 9 June (Week 4)_

## Score card

### I use an agile process
_Rating: Steady_
You did a good job collecting the main requirements, asking about the input format. You then moved on to asking about the output format. You drew up a user story, which was a really nice touch.

Before diving into code, it can be helpful to ask the client about a few edge cases. This helps the client explain the expected behaviour of the programme better, and let you know when to throw errors. For example, what if the input is not a string, what if the grades are capitalised, what if there is no comma, etc.

It can also be helpful to map several simple and complex core cases and a few edge cases in an input-output table. This will also help you decide on your test progression later on.

### I can model anything
_Rating: Strong_
You took time to think through the design of your programme before diving in. This is a good approach, and just remain open to the possibility that TDD might lead you to a different, simpler implementation.

I like that you thought of pulling out the valid grades into an array that can be altered later on. Good future-proofing. I don’t think it was necessary to implement this from the first step in TDD, but would have been an excellent refactor to do a little later on.

### I can TDD anything
_Rating: Improving_
Testing behaviours: You started testing your programme itself, to see if it can initialise the class. That is an implementation detail that should be private to your function. Whether your programme can do this or not is an intermediate step that your tests shouldn’t have to worry about. Instead, your test suite should test for the final output of the programme. That way, if you decide to change your implementation later on, you can do so without having to rewrite the tests. It also builds functionality relevant to the client sooner.

Red: Your first test was quite a complicated one, taking as input not only multiple grades (Green, Amber and Red), but also multiple occurrences of each grade (several Greens). This forces you to write way too much code to get this test passing - essentially the entire algorithm in a single test. Try to break down your test cases into very simple ones, and progress to more complexity slowly. For example, test 1: “Green”, test 2: Amber”, test 3 “Red”, test 4 ”Green, Green”, test 5 “Green, Amber”, test 6 “”, test 7 “Green, Purple”, test 8 “GReen”, etc.

Green: One of the key principles of TDD is that you write only as much code as is necessary to pass your failing test. You want to get it to green as quickly as possible. Even if that means hard coding the result. Because you chose difficult tests in your red phase, it was hard for you to get them to green fast enough. Rather write more tests, with less corresponding implementation code, so that you can speed up your cycle and let the solution emerge iteratively.

Refactor: In TDD, we really count on the refactor method, partly because it helps us keep the green phase so short. It also keeps the refactors small and less daunting, and lastly, it means you always have the best version of your code for whatever feature set it has at that point in time. In conclusion, it is very important to remember to refactor after every green cycle.

There won’t always be much to refactor, especially in the beginning. But even then, at least ask yourself the question “Is there anything I can refactor in my implementation code? No? Ok, is there anything I can refactor in my test code? No? Ok, back to Red.” By verbalising that, your reviewer will know that you are not simply skipping the step.

### I can program fluently
_Rating: Strong_
You are clearly familiar with using the command line to set up your project, run your tests, etc. You are also comfortable coding in Ruby, and you apply its naming conventions (i.e. snake_case). You make use of its built-in functions and can easily manipulate strings and arrays. Great work!

You developed a logical algorithm and made solid choices for how to approach the task. Keep it up!

### I can refactor anything
_Rating: Nothing here_
You did not get the chance to refactor. Next time, when applying the RGR cycle more systematically, you will have more opportunities to showcase this skill. Remember that you can also refactor your test code, for example by grouping tests together (e.g. in a describe block), or moving variables to the outer context (e.g. “string”).

### I can debug anything
_Rating: Nothing here_
You are familiar with common errors and did not get stuck in debugging in this session. Nice!

### I write code that is easy to change
_Rating: Steady_
For the most part, you use variable names that are in the domain of what you are coding in (e.g. “report”) - this makes your code easier to read and change. You could refactor “array” to something more expressive, e.g. “grades_array”.

Using Git is also a great way to make your code more easily changeable. It means that at any given point in time, you can fall back on recent working code. So you can refactor with more confidence.

Your test code is heavily coupled with your implementation code, because you are testing for each implementation detail (e.g. the class can be initialised). The result is that if you later on decide to change your implementation code (e.g. you use a parser to handle the input), you will have to re-write all your tests. Rather test for the final output (i.e. what should the output be if the input is “Green”), and leave the implementation details private to your class. That way, you can refactor all of your implementation code at any time and your test code will still hold.

### I have a methodological approach to problem solving
_Rating: Steady_
You prioritised core cases over edge cases, which is good because it allows you to deliver a working version of the programme to your client sooner.

You apply a regular RGR cycle, but don’t forget the second R! At first, your tests progressed in complexity too quickly, but if you instead start simple and progress slowly, I am sure you will get the hang of it soon.

Other than that and the lack of version control, your approach is quite methodical, well done!

### I can justify the way I work
_Rating: Strong_
You verbalise your thought process, which helps your reviewer understand not just what you are doing, but also why you are doing it. This will stand you in good stead during technical interviews and paired programming sessions.

### General feedback
Good job! It is clear that you know how to code, and you take care to plan out your next steps. Sometimes it can feel like TDD is slowing you down or holding you back. It is indeed counterintuitive to write code in such small chunks! But it will help protect you from overengineering your solution, which becomes more important as your assignments become more complex. Practice applying TDD to the letter by writing more tests per feature, getting to green faster, and using your refactor phase to tidy or tighten things up. You are well on your way!

## User Stories

Company that makes School reports
Teachers assess how students did on tests
string of csv from schools containing grades - just a grade (green, amber or red)
write a report based on this -  a string with counts of each grade.
(e.g. green: 7\n abmber: 8\n red: 5) < do more of this>

As a company who produces reports for schools,
So I can send a clear and formatted report to the schools,
I would like to format a string of comma separated values into a formatted string.


## Diagram

- take a string (e.g. "green, red, orange")
- return a string

## Classes & methods

````ruby
class ReportGenerator
VALID_GRADES = ["green", "amber", "red"]
  def initialize(report)
  end

  def produce_report
    # turns the @report into a formatted report and returns the result
  end
end

````

## Unit tests

- contructs and displays raw data
- check that produce_report returns data in the correct format
- raise an error if the original data is in the wrong format
- raise an error if the original data is empty
- report will inform user of any invalid grades
  
