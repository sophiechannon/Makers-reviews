# Review 3 - Spell check
_Monday 25 July, Week 10_

## Scorecard

### I use an agile process
_Rating: Steady_

You seemed to struggle to find a starting point for questioning. I find a nice and easy place to start is by just asking about inputs and outputs (and even asking for an example). However, you went on to asking a great set of questions around finer details and edge cases - this shows that you have a good eye for building a good and practical system!

As a refinement to your information-gathering process, I would recommend using the input-output table as a tool for communication between you and the client, rather than to plan tests. The idea of the input-output table is to represent the entire system using just a few entries. This would typically mean you’d have one or two entries to represent the core system, then one entry for each finer detail/edge case.

Overall, a good procedure goes as follows:
- Ask about the input format
- Ask about the output
- Create an input-output table to represent this
- Ask a question about the system (such as capital letters, etc.) and record the answer as an input/output
- Rinse and repeat until you run out of questions

### I can model anything
_Rating: Steady_

You began your solution as a method, citing the need to potentially create a class later. This is a great choice, as it is the simplest place to begin. It is also great that you recognized a potential need for growth later on.

You correctly followed the Javascript convention of using camelCase to name your method. To refine on this further, you should aim to make your method sound like a command, as this is a bit more user-friendly. For example, telling your system to `checkSpelling` as opposed to calling the `spellChecker` method.

### I can TDD anything
_Rating: Improving_

You were sufficiently familiar with the testing syntax and framework.

Your tests were based on the expected inputs and outputs of the system. This is great as it promotes flexibility in your code, while keeping it focused on the behaviour of the system.

Your tests began nice and simply, but had a bit of a complex progression from the second test. To pass the first test, you returned a hard-coded value. This means that your system works for a single correct word if that word is “hello”. The simplest assumption to break would be that the word has to be “hello”. The next easiest test would therefore be one that says “there”.

### I can program fluently
_Rating: Steady_
You seemed comfortable enough using the terminal and editor to set up your environment.

You seemed to have a sufficient level of knowledge in all of the relevant programming constructs needed to solve the problem.
I can refactor anything
Rating: Improving
You added a Refactor step to place your method within a class. At this stage, your code didn’t need this, as no word bank was technically necessary at this stage. This is due to the fact that your Refactor step here would only be to simply return the input - all words so far have been correctly spelled.

### I can debug anything
_Rating: Steady_

You regularly read the stack trace to ensure that you are up-to-date on all possible bugs.

### I write code that is easy to change
_Rating: Steady_

You made regular use of Git as part of your process, committing whenever tests pass. This ensures that you have a working history of your code and that any rollbacks will return working code. This also allows you the opportunity to keep a record of changes to your code.

I was pleased to see that you had your test suite decoupled from the implementation. This was done by testing on the expected inputs and outputs of the system. This promotes flexibility in your code, and so any changes made to the structure of the code will not warrant a change in tests.

You wisely chose good variable names to reflect the information that they hold.

### I have a methodological approach to problem solving
_Rating: Steady_
You stuck very closely to the RGR cycle during this review, and it was great to see that! This would be hindered a bit later due to the complex test progression, unfortunately. However, with a more refined test progression, I am confident that you will be able to test-drive your system into working!

Your tests logically prioritized simple behaviour over complex. You also focused on core functionality before eventually moving to edge cases.

### I can justify the way I work
_Rating: Steady_

You sounded out your logic and process so that it was easy to follow you during this review.

### General feedback
Your TDD process is at a very good stage (particularly your RGR cycle). You are showing a great set of habits that you have picked up during reviews!

Your test progression is, unfortunately, a bit complex. This is due to the fact that you are (a) breaking two assumptions at a time and (b) not aiming for the simplest assumption to break. As a result, using the RGR cycle becomes a bit difficult, and your Refactor steps become much longer. When writing a new test, try to aim to only break one assumption at a time.

Otherwise, well done on making these improvements, and I look forward to seeing further improvements from you!

## User requirements

- Mega Soft Weird - company
- Word processor in development
- Looking to add a spell checker
- Build a spell checker
- Hard-coded library of words (word bank)
- Case in-sensitive
- Just needs to return the same sentence that has been entered but with tildas either side incorrectly spelt words
- i.e. words not in the word bank
- No need to offer suggested spelling

- Punctuation will not appear, WP handles this
- Words are separated by spaces

| inputs | outputs |
|--------|---------|
| hello | hello |
| hello there | hello there |
| these words are spelt correctly | these words are spelt correctly |
| helol | ~helol~ |
| helol there | ~helol~ there |
| these words are spnelt correclty | these words are ~spnelt~ ~correclty~ |
| These words are spnelt correclty | These words are ~spnelt~ ~correclty~ |
| These words are spnelt Correclty | These words are ~spnelt~ ~Correclty~ |
| "" / not a string | throws an error |
