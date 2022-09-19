### Review 2 - Band pass filter
_Tue 5 July (Week 7)_

## Scorecard

### I use an agile process
_Rating: Strong_
You did a good job of gathering information from our client. You asked pertinent questions about the nature of the input and output that the client expect and from the examples given, you were able to extrapolate a detailed input-output table.
In addition, you were able to also identify edge cases like getting input in the wrong format and containing the wrong type.
You missed a few edge cases and fine details though including inputs consisting of an empty array however, I think you would have been capable of identifying said edge cases later in your development process. Well done!

### I can model anything
_Rating: Steady_ 
The problem is a simple input-output problem and thus does not require state to be maintained therefore, your decision to you use a function was spot on!

You adhered to naming best practices for the majority of your variables and parameters such as naming the parameter representing the input array ‘soundwave.’ In addition, you used camelCase in your function’s name which is a prescribed standard in Javascript.
However, there are some things to keep in mind: functions should always be named using ‘actionable’ names and not nouns. For example, your function name could have been ‘filter’ instead of ‘audioFilter.’

Your algorithm made sense as it iterated through the input array and determined the category that each element fell under and proceeded to treat it appropriately based on a condition pertinent to it.

### I can TDD anything
_Rating: Steady_
As I mentioned during the live feedback portion of the session, you have a solid grasp of TDD and the RGR cycle and your first test was simple and satisfied a tenet of TDD which is to always strive for as simple a test case as possible. Your subsequent tests while still being simple, could have been even simpler that way, you would avoid the complexity associated with array iteration in this problem until your test suite is at least four tests strong.

Remember that the simplest way to make any test pass is to make use of hardcoded values. This way, you can start to see patterns develop while keeping your implementation as simple as possible and you can then take advantage of said patterns in the refactor phase when you generalize.

Overall, you have a very good grasp of TDD and test progression and I want you to take a look at this article which will help you gain an even deeper insight: https://www.tddfellow.com/blog/2016/08/31/getting-stuck-while-doing-tdd-part-3-triangulation-to-the-rescue/

### I can program fluently
_Rating: Strong_

You are fluent in your use of the command line. You are able to effortlessly initialize a git repository, create and remove a file and also install bundles. You also showed familiarity with language constructs and built-in methods like ‘map’ which you took advantage of in your algorithm.

As mentioned, you had a logical algorithm and it resulted in a working solution which satisfied your client’s most important requirements using the ‘map’ method to iterate through the input array elements was also a good choice as it meant that you used fewer lines of code while still not sacrificing efficiency.

### I can refactor anything
_Rating: Improving_

Although you had a working solution, I did not get to see much refactoring except for your last test wherein you used a hardcoded value to make the test pass and which then gave you the opportunity to then generalize by refactoring.

This is due to not using hardcoded values in your functions which would have granted plenty of opportunities to enter the refactor phase and generalize.

The refactor phase can also be important for removing magic numbers and extracting other functions from portions of your main function that are complex enough to be stand-alone functions.

### I can debug anything
_Rating: Strong_

You showed competence in your debugging process as you understood the importance of reading and understanding the stack trace and then forming a hypothesis about what the cause of the error could be and then proceeding to execute a potential solution.

You did not try to make random changes to your code in the hopes that a solution would arise in fact, you even printed aspects of your function to console to get a better insight into what was happening in your algorithm. Keep that up.

### I write code that is easy to change
_Rating: Steady_

You understand the importance of git and its place in the development process and although I, unfortunately, did not get to see you do a commit after entering the green or refactor phase, you understood that that was what needs to happen and vocalized what your commit would have read like.

Your test suite adopted a behaviour-first approach which means that your tests did not focus on the implementation details of your function and instead focused on interrogating the resulting output from a given input. This means that your test suite will not need to change if the implementation details of your function change.

### I have a methodological approach to problem solving
_Rating: Steady_

You followed a regular RGR cycle albeit with slightly more complexity than was necessary. You ended up with a working solution which satisfied your client’s main requirements which was possible because you prioritized core requirements over edge cases which you only attended to after the main requirements were satisfied.

I also like the fact that you looked up documentation when you were not sure of how to test for error throwing with Jest.

### I can justify the way I work
_Rating: Strong_

You vocalised and made clear every aspect of your development process. It was very easy to follow your process and understand why you made certain decisions and why you took the approach you took. Your reasoning was very sound and this is exemplified in your algorithm which resulted in an efficiently implemented working solution.

### General feedback
Congratulations on a working solution! As I mentioned, I think you have 90% of what TDD and the RGR cycle are supposed to look like and with the implementation of the advice I have given above, it should be easy to add the remaining 10% and have TDD become part of your development toolset.

## Information collecting

- DAW plugins
- electronic music filters
- to change how track sounds
- Write a band pass filter

- input:[60,10,45,60,1500],20,50

- array is a sound wave (frqs), lowpass filter, upperlimit of filter
- output: [50,20,45,50,50]

- the filter should essentially move anything below 20 up to 20, and anything above 50 down to 50 (in this instance)

- if input isn't in the expected format: simply raise and error to warn user that input is corrupted

| input | output |
|-------|--------|
| [20], 20, 50 | [20] |
| [20, 50], 20, 50 | [20, 50] |
| [10, 30], 20, 50 | [20, 30] |
| [30, 60], 20, 50 | [30, 50] |
| [10, 30, 60], 20, 50 | [20, 30, 50] |
| [10, 10, 50, 52], 15, 60 | [15, 15, 50, 52] |
| [15, 15, 60, 52], 15, 50 | [15, 15, 50, 50] |
| [10, 15, 40, 50, 60, 75], 20, 50 | [20, 20, 40, 50, 50, 50] |
| [10, 40, 50], "40", 50 | throw an error |
