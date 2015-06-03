pragmatic studio ruby course

    This is the Pragmatic Studio Ruby online course that I am taking to practice on my own time after having graduated
    DaVinci Coders Building the Toolbelt of a Junior Ruby on Rails Developer courses with Professor Jason Noble
    on May 2015.

Chapter 1: Introduction

    In this course, we are going to build a text based game from start to finish. First, we have to create a character.
    It will start with a name and a health number. It will be possible to add other characters later on as desired.
    Once we have our characters we will be adding some interesting game play to it. Each player will take a turn based
    on a dice roll, their health will then change accordingly to the rules. We'll also have them gain points by finding
    random treasures from the dice roll. Of course, some test will be required, so we will use rspec to do that.
    Then, at the end of the game the scores will be displayed as well as the winning player.
    We may print out the game's statistics. Finally, we will put this package as Ruby Gem for others to use.
    Additionally, we will build the movie playlist app using the same concepts. At the end of the course, we should end
    up with two apps: a movie app, and the game. So let's Install Ruby!

    With Mac, following this web page and install Ruby and Rails:
    http://davinci-installfest.herokuapp.com/installfest/install_ruby_rails?back=macintosh%23step7

    Choose A Text Editor
    Throughout the course we'll be creating a Ruby program by putting Ruby code in one or more files.
    We'll need to choose a text editor (I use RubyMine) to create and edit these files. The editor doesn't need to
    have a boat-load of features. In fact, we find that a basic editor that has Ruby syntax highlighting and basic
    file/directory browser works best. They are make the decision easy for us. Unless we already have a code editor
    that you're comfortable using (not Wordpad or Notepad!), they recommend using either TextMate version 1.5 (Mac only)
    or Sublime Text (Mac, Windows, or Linux). Both have free trials and are easy to use, so we can try them both to see
    which one we prefer. They use TextMate during the videos, but any good code editor will do.
    We're now ready to start writing Ruby programs.

Chapter 2: Running Ruby

    There is two ways to running Ruby. IRB stands for “interactive Ruby” and is a tool to interactively execute Ruby
    expressions read from the standard input when we want instance feedback, or try to experiences something out. When
    we want to save the ruby files and run it later, we will write a ruby program file.

    With the Video practice:
    In my iTerm:
    $ irb
    2.1.2 :001 > "Ruby is fun!"
     => "Ruby is fun!"
    2.1.2 :002 > comment = "Ruby is fun!"
     => "Ruby is fun!"
    2.1.2 :003 > comment
     => "Ruby is fun!"
    2.1.2 :004 > comment.upcase
     => "RUBY IS FUN!"
    2.1.2 :005 > Time.new
     => 2015-05-21 19:37:46 -0600
    2.1.2 :006 > "Ruby is
    2.1.2 :007"> fun!"
     => "Ruby is\nfun!"
    2.1.2 :008 > comment =
    2.1.2 :009 >   "Ruby is fun!"
     => "Ruby is fun!"
    2.1.2 :010 > commnt
    NameError: undefined local variable or method `commnt' for main:Object
    	from (irb):10
    	from /Users/UserName/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'
    2.1.2 :011 > exit


    In my iTerm:
    $ ruby video_2_hello_ruby.rb
    Ruby is fun!
    RUBY IS FUN!
    RUBY IS FUN!
    RUBY IS FUN!
    RUBY IS FUN!
    2015-05-21 19:56:21 -0600
    Or I can run [ Control + Shift + R ] in my RubyMine:
    /Users/.rvm/rubies/ruby-2.1.2/bin/ruby -e $stdout.sync=true;$stderr.sync=true;load($0=ARGV.shift)
    /Users/UserName/workspace/self_study/pragmatic_studio/ruby_course/video_2_hello_ruby.rb
    Ruby is fun!
    RUBY IS FUN!
    RUBY IS FUN!
    RUBY IS FUN!
    RUBY IS FUN!
    2015-05-21 19:53:16 -0600

    Process finished with exit code 0

    With the Exercise practice:
    1. Run Ruby Interactively
    An irb session is a great place to start experimenting with Ruby code. It gives you instant feedback.
    Fire up an irb session from your command line:
    irb
    Once it starts, you'll see a prompt where you can type in any Ruby code. Here's what our irb prompt looks like:
    >>
    If your prompt looks slightly different than ours, don't worry about it.
    For example, you may see something like this:
    irb(main):001:0>
    However your prompt looks, this is where you type in Ruby expressions for irb to evaluate.
    Not surprisingly, Ruby is pretty good at math. So a really simple use of irb is as a calculator.
    Type in the following expression that adds two numbers together, then press Return:
    >> 1 + 2
    Notice when you hit Return, the Ruby expression you typed in is evaluated and the result is printed out on the
    subsequent irb line after =>, like this
    => 3
    Now it's your turn to have a go at irb (and test your math skills). Type in a Ruby expression to compute the number
    of hours in a calendar year.
    Next, create the string literal "Hello, Ruby!".
    Assign that string to a variable named greeting.
    Finally, use the upcase method to print the greeting in all upper case letters.
    When you're done, exit the irb session by typing, wait for it... exit (or Ctrl-D):
    >> exit
    So when you're in an irb session, the Ruby interpreter runs in a read-eval-print loop (REPL).
    It reads the expression you type, evaluates the expression, and then prints the result.
    That's very handy!

    In my iTerm:
    $ irb
    2.1.2 :001 > 1 + 2
     => 3
    2.1.2 :002 > 24 * 365
     => 8760
    2.1.2 :003 > "Hello, Ruby!"
     => "Hello, Ruby!"
    2.1.2 :004 > greeting = "Hello, Ruby!"
     => "Hello, Ruby!"
    2.1.2 :005 > greeting.upcase
     => "HELLO, RUBY!"
    2.1.2 :006 > exit

    2. Write a Ruby Program
    While irb is good for experimenting with Ruby in an interactive environment, there's no way in irb to save what you
    typed in and run it again later. To do that, we'll need to put our code in a Ruby program file. If you haven't
    already chosen a text editor, go ahead and install a text editor before moving on.
    Create and Run a Ruby Program File
    Once you have a good text editor installed, you're ready to write your first Ruby program file.
    Start by creating a directory called studio_game to hold the files you create while taking this course and change
    into this directory. The commands to do that are the same regardless of which operating system you're using, but the
    directory structure is slightly different.
    Create the studio_game directory in your home directory (represented by the tilde character).
    To create the directory and change into it, type the following two commands at the command prompt
    (not in the text editor):
    mkdir ~/studio_game
    cd ~/studio_game
    Next, create a new file called studio_game.rb. Make sure to save the file in the studio_game directory we created in
    the previous step.
    We want the game to start by printing a welcome message. So in your studio_game.rb file, type in the Ruby code to
    print "Welcome!" to the screen. Remember that irb always prints results to the screen, whereas in a Ruby program
    file you need to use puts to print results to the screen.
    Save the file!
    Now, back over at your operating system command prompt (not in the irb session), run your program using the ruby
    command and passing the name of your Ruby program file as the argument:
    ruby studio_game.rb
    Tip: Most Ruby-aware text editors and IDEs offer a way to run Ruby program files from within the editor.
    For example, if you're using TextMate, you can run Ruby program files by pressing Command+R. If you're using
    RubyMine, press Shift + Control + R.
    Now, similar to what we did in the video, add your program to assign the welcome message to a variable named
    greeting, and print it uppercase three times in a loop.
    Don't worry if the syntax doesn't make sense at this point. We'll learn more about strings, variables, methods,
    and blocks in future exercises. The important part is that you know how to run a Ruby program file.
    After printing the greeting, it might be handy for the game to print the time it started. Use the built-in Time
    class to print the current time.
    Run the program to make sure you get what you expect!

    Run Shift + Control + R in my RubyMine:
    /Users/UsersName/.rvm/rubies/ruby-2.1.2/bin/ruby -e $stdout.sync=true;$stderr.sync=true;load($0=ARGV.shift)
    /Users/UsersName/workspace/self_study/pragmatic_studio/ruby_course/studio_game/studio_game_2.rb
    Welcome!
    WELCOME!
    WELCOME!
    WELCOME!
    2015-05-21 20:29:53 -0600

    Process finished with exit code 0

Chapter 3: Numbers and Strings

    Every game needs a player, we will start with print out a player's name and a health value. We'll need to learn
    Numbers and Strings to do this, and you will use this in any ruby program you write. It's a good place to start
    learning. So in the exercise we will need to print out " Larry's health is 60 ". We are going to look at a similar
    example, and use numbers and strings to print out " Goonies has a rank of 10 ". After that, we can do something
    similar to the Larry player.
        In my iTerm:
        $ irb
        2.1.2 :001 > 7 * 3
         => 21
        2.1.2 :002 > 4.99 + 1.99
         => 6.98
        2.1.2 :003 > 25 / 2
         => 12
        2.1.2 :004 > 25 / 2.0
         => 12.5
        2.1.2 :005 > merits = 10 * 2
         => 20
        2.1.2 :006 > demerits = 0.5 * 3
         => 1.5
        2.1.2 :007 > rank = merits - demerits
         => 18.5
        2.1.2 :008 > merits.class
         => Fixnum
        2.1.2 :009 > demerits.class
         => Float
        2.1.2 :010 >exit
    Now we know how to use Number. The next thing is the name, in ruby, that just the string.
    In Ruby, they come with double quotes and single quotes. Let's look at this in Ruby file.
    I did touch video_3_flicks.rb and get into this file:

    Numbers and Strings
    Exercises

    Objective
    Now that you know a bit more about numbers and strings, we'll start to add some players to the game.
    The goal of this exercise is to print out info about our initial player and a list of all the players.
    Here's the output we're shooting for:

    larry's health is 60

    Players:
      larry
      curly
      moe
    1. Print Player Info
    Each player has a name (a string) and an initial health value (an integer number).
    We need a way to remember a player's name and health so we can refer to them later on in the game.
    To do that, we'll need to assign the name and health values to variables.

    Variables simply name things in our program. It's important to give the variables good names so it's easy to tell
    what they're referencing. Ruby has some variable naming rules: variable names can be a mix of letter and numbers
    (or an underscore), and the first character of a variable name must be a lowercase letter or an underscore.

    For example, the first player's name could be stored in the variable name1. Sometimes the best variable name has
    more than one word, in which case you separate the words with an underscore. For example, a good name for a
    player's high score would be high_score.

    With that in mind, let's create our first player...

    Go ahead and delete the code currently in your studio_game.rb file so you have a clean slate.

    The name of our first player is "larry" (he prefers the lowercase pronunciation). Create a variable to remember
    that name. In other words, assign the player's name to the variable.

    Larry's initial health value is 60. Create a second variable and assign the health value to it.

    Next, using those two variables, create the single-quoted string "larry's health is 60" and print it out to the
    console. Keep in mind that in a single-quoted string, you'll need to use a backslash to escape the apostrophe in
    the possessive form of the player's name.

    Don't forget to run the program to check your work!

    All that escaping and concatenation gets kinda tedious, doesn't it? This is a case where a double-quoted string would make things a lot easier. So change the single-quoted string to a double-quoted string and substitute (interpolate) the name and health values into the string.

    Show Hint
    Rather than using + for concatenation, use #{} to substitute the name and health values directly into the string.

    Run the program to make sure you're getting the same output as before.

    Now that you're getting the hang of it, give this a try: How would you change the double-quoted string to
    triple Larry's health?

    OK, now what if you wanted to divide Larry's health by 9 and have the answer printed out with decimals
    (a float) or without decimals (an integer)?

    Experimenting with code is a great way to learn, so play around a bit until you're comfortable.

    2. Print a List of Players
    In addition to being able to substitute the value of any Ruby expression into a double-quoted string,
    double-quoted strings also support various escape sequences that start with a backslash character.
    For example, you use \n for a newline character and \t for a tab character. When a string is evaluated,
    Ruby looks for these escape sequences and replaces them with their equivalent character.

    Print out a list of players in the game formatted like this

    Players:
      larry
      curly
      moe
    Notice that each player's name is printed on a separate line and indented with a tab.
    There are at least two ways to do this. First try it without using any variables.

    Then change it to use variables for each player's name.

    Make sure to run your program file to check the formatting.

    Solution
    All the exercise solutions for the game app you're writing,
    as well as the example code for the movie app we're writing in the videos,
    is available for download in the code bundle file (right-click to save).
    No peeking until you try! When you unzip the file, you'll end up with a directory called pragstudio-ruby-code.
    Inside that directory, you'll find two sub-directories: example-code and exercise-solutions.
    The code is organized into directories matching the names of the course modules.

    The full solution for this exercise is in the numbers-strings directory of the code bundle.

    Bonus Round
    Start Creating a Third Ruby Program
    For folks who want even more practice writing Ruby, here's an idea you could experiment with alongside
    the game program: a fundraising program. This program would track various projects (start-up projects,
    community projects, personal projects, etc.) and how much funding each project has received so far.
    For inspiration, check out Kickstarter, Pledgie, gofundme, or indiegogo.

    At the end of each module, we'll include a list of fundraising program requirements for you to implement.
    Please consider these requirements as non-exhaustive guidelines for building this program.
    If you think something else should be added, changed, or removed, go for it! There are no right answers.
    Be creative, experiment, don't be afraid of error messages, and have fun trying new things!

    To get started, create a new program (call it crowdfund, for example) and print out info about your initial project
    and a list of all your projects. Something like:

    Project ABC has $1000 in funding.

    Projects:
      Project ABC
      Project LMN
      Project XYZ
    The solution for this bonus app exercise is in the numbers-strings directory of the code bundle.

    Wrap Up
    OK, now we have some players in the game. The game doesn't do much yet, but at least it's a start in the
    right direction. In the process, you got some practice and learned how to:

    use single and double-quoted strings
    concatenate strings
    mix strings and numbers
    use escape sequences
    evaluate (interpolate) Ruby code within a double-quoted string using #{}
    In the next section we'll spiff up the game's intro by creating objects and calling their methods!

    Dive Deeper
    To learn more about numbers and strings, refer to Section 6.1, Numbers and Section 6.2, Strings in Programming Ruby.

Chapter 4: Variables and Objects

    We need more than just one player in the game, so that means we need more Variables. Our Objects need to create
    more players and print them out. We are going start with the movie app, and do the game as exercise.
        $ irb
        2.1.2 :001 > movie = "Goonies"
         => "Goonies"
        2.1.2 :002 > movie
         => "Goonies"
        2.1.2 :003 > "Mikey's favorite movie is #{movie}"
         => "Mikey's favorite movie is Goonies"
        2.1.2 :004 > movie = "Ghostbusters"
         => "Ghostbusters"
        2.1.2 :005 > "Mikey's favorite movie is #{movie}"
         => "Mikey's favorite movie is Ghostbusters"
        2.1.2 :006 > movie.class
         => String
        2.1.2 :007 > thumbs_up = 10
         => 10
        2.1.2 :008 > thumbs_down = 2
         => 2
        2.1.2 :009 > rank = thumbs_up - thumbs_down
         => 8
        2.1.2 :010 > rank.class
         => Fixnum
        2.1.2 :011 > current_time = Time.new
         => 2015-06-02 18:51:39 -0600
        2.1.2 :012 > "The time is #{current_time}"
         => "The time is 2015-06-02 18:51:39 -0600"
        2.1.2 :013 > current_time.class
         => Time
        2.1.2 :014 >
    Remember the Variables hold the reference of the objects, not the object themselves.
    Think of Variables just a point to somebody, and Objects is somebody live in somewhere.
        2.1.2 :014 > my_favorite_movie = "Goonies"
         => "Goonies"
        2.1.2 :015 > your_favorite_movie = my_favorite_movie
         => "Goonies"
        2.1.2 :016 > my_favorite_movie.object_id
         => 70318832601980
        2.1.2 :017 > your_favorite_movie.object_id
         => 70318832601980
        2.1.2 :018 > my_favorite_movie[0] = "L"
         => "L"
        2.1.2 :019 > my_favorite_movie
         => "Loonies"
        2.1.2 :020 > your_favorite_movie
         => "Loonies"
        2.1.2 :021 > my_favorite_movie = "Ghostbusters"
         => "Ghostbusters"
        2.1.2 :022 > your_favorite_movie
         => "Loonies"
        2.1.2 :023 >
    Both variables my_favorite_movie and your_favorite_movie are point to the same object "Goonies",
    so when we change the first letter to 'L', both variables get change to "Loonies".
    When we reassign my_favorite_movie to different Object "Ghostbusters", your_favorite_movie still assign to "Loonies"
    Now we have two variables and two objects. Objects can also do things. We can sending the object a message
    by calling the method.
        2.1.2 :023 > movie = "Goonies"
         => "Goonies"
        2.1.2 :024 > movie.length
         => 7
        2.1.2 :025 > movie.reverse
         => "seinooG"
        2.1.2 :026 > movie.center(10)
         => " Goonies  "
        2.1.2 :027 > movie.ljust(30, '.')
         => "Goonies......................."
        2.1.2 :028 > rank = 8
         => 8
        2.1.2 :029 > rank.to_s
         => "8"
        2.1.2 :030 > rank.to_f
         => 8.0
        2.1.2 :031 > rank.to_i
         => 8
        2.1.2 :032 > rank * 2
         => 16
        2.1.2 :033 > rank.*(2)
         => 16
        2.1.2 :034 > rank * 2
         => 16
        2.1.2 :035 > current_time = Time.new
         => 2015-06-02 19:15:10 -0600
        2.1.2 :036 > current_time.hour
         => 19
        2.1.2 :037 > current_time.min
         => 15
        2.1.2 :038 >
    The Objects(Receiver) is usually on the left, and come with a dot following the message which is the method name
    and parameters. For more info of Ruby method, we can go to http://ruby-doc.org/
        2.1.2 :038 > movie = ""
         => ""
        2.1.2 :039 > movie.empty?
         => true
        2.1.2 :040 > movie = "Goonies"
         => "Goonies"
        2.1.2 :041 > movie.empty?
         => false
        2.1.2 :042 > movie.start_with?("G")
         => true
        2.1.2 :043 > movie.include?("x")
         => false
        2.1.2 :044 > movie = "Ghostbusters"
         => "Ghostbusters"
        2.1.2 :045 > movie.reverse
         => "sretsubtsohG"
        2.1.2 :046 > movie
         => "Ghostbusters"
        2.1.2 :047 > movie.reverse!
         => "sretsubtsohG"
        2.1.2 :048 > movie
         => "sretsubtsohG"
        2.1.2 :049 > movie = "ghostbusters"
         => "ghostbusters"
        2.1.2 :050 > title = movie.capitalize
         => "Ghostbusters"
        2.1.2 :051 > title = movie.ljust(30, '.')
         => "ghostbusters.................."
        2.1.2 :052 > title = movie.capitalize.ljust(30, '.')
         => "Ghostbusters.................."
        2.1.2 :053 > rank = 9
         => 9
        2.1.2 :054 > "#{title} #{rank}"
         => "Ghostbusters.................. 9"
        2.1.2 :055 > exit

    Variables and Objects
    Exercises

    Objective
    At this point, we really only have one complete player: larry with a health of 60.
    Our other players—curly and moe—haven't yet been assigned a health.
    In this exercise, we'll give them some life and also add a fourth player.
    The goal is to print out each player's name and health with a slightly different format,
    like so:

    Larry has a health of 60.
    CURLY has a health of 125.
    *************Moe has a health of 100.*************
    Shemp........................... 90 health
    Along the way we'll practice assigning objects to variables, calling methods on those objects,
    and finding documentation on methods in Ruby's standard library.

    1. Player #1: Larry
    As our game stands now, we have two variables holding onto the name and health of the first player:

    name1 = "larry"
    health1 = 60
    Our first formatting task is to capitalize the name.

    We've seen a few string methods, but we've barely scratched the surface of what Ruby strings can do.
    Thankfully, you don't have to remember all the string-related methods.
    The web http://ruby-doc.org/ allows you to view information about Ruby classes, modules, and methods
    from the comfort of your command line.

    The instance methods are the methods that you can call on a String object.

    Now narrow it down to get more information about the capitalize method.

    Finally, returning to our objective, back in your studio_game.rb file change how the first player is printed
    so his name is capitalized. Using the two variables above, here's the output you want:

    Larry has a health of 60.

    2. Player #2: Curly
    For our second player, we want to print his information with the name in all uppercase letters.

    Create variables for a second player with the name "curly" and an initial health of 125.
    Then use those variables to print his information like this:

    CURLY has a health of 125.
    If you don't remember the method to capitalize all the characters in a String, don't hesitate to use
    http://ruby-doc.org/  to look it up

    Now it's time to experiment a little. Add two lines to the bottom of the program file:
    change Curly's health variable to point to Larry's health variable and print out Curly's information again.

    What do you expect to see? Re-run the program.

    Finally, add a few more lines to the bottom of the program. Reassign Larry's health variable to be 30.
    Then print out the name and health of both players again.

    What result do you expect for Larry and Curly now? Re-run the program.

    The assignment of variables can be a bit tricky, especially when variables reference other variables.
    You should now have:

    Larry has a health of 30.
    CURLY has a health of 60.
    Make sure you understand why this works before moving on.
    Don't hesitate to go back and watch the part in the video about the variables my_favorite_movie and
    your_favorite_movie if you need help. Or grab a sharpie and a napkin and draw it out for yourself if that helps.

    3. Player #3: Moe
    The third player's information needs to be printed so that it's all centered and padded with asterisks.

    Use the documentation to find the method that centers a string. Note that the first parameter (the length)
    is required, but the second parameter for the character to use as padding is optional.
    Try the examples in irb to get a feel for how the method works.

    Create variables for a third player with the name "moe" and an initial health of 100.
    Then use those variables to print his information like so:

    ************Moe has a health of 100.************
    There are at least two ways to do this, so experiment a little before looking at the answer.

    Show Hint
    You will need to call two methods: capitalize and center.

    4. Player #4: Shemp
    Create a fourth player named "shemp" with an initial health of 90.
    Use variables to print out his information with the name capitalized and left-justified, like this:

    Shemp........................... 90 health
    There are at least two ways to do this, so experiment a little before looking at the answer.

    5. Reverse It
    In the video, we used the reverse method to print a reversed version of the string "Goonies".
    What happens if you try to reverse a number, such as a player's health. Try it by opening an irb session and typing:

    >> 123.reverse
    Hmm, why doesn't that work?

    Take a moment to study the error message:

    NoMethodError: undefined method `reverse' for 123:Fixnum
    Any time you see an error like this, take the time to read it.
    This is Ruby's way of trying to help us understand what went wrong.
    And in this case, the error is quite helpful. It's saying that it couldn't find a reverse method to call on
    the object 123, which is a Fixnum.

    Indeed, if you look up the documentation for the reverse method you'll find that it's not defined on the
    Fixnum class. So even though you can call methods on objects, only certain methods are defined on certain classes
    of objects.

    We know we can reverse a string, so how could we convert a number object to a string object?
    It turns out that all objects in Ruby have a to_s method that converts the object to its string representation.
    Using this tip, try chaining methods together to reverse the number 123 again.

    Show Answer: >> 123.to_s.reverse

    How then would you convert the reversed string back to an integer?

    Show Answer: >> 123.to_s.reverse.to_i

    6. Vocabulary Quiz
    Learning to program can feel a bit like learning a foreign language.
    Here are a couple sentences to help you practice your new language skills.

    In the following line of code, capitalize is a (method) called on the (object) named name and assigned to the
    (variable) named text.
    text = "#{name.capitalize} has a health of #{health}."

    In the case of the line of code below, center is a (method) that takes two (parameters).
    puts text.center(50, '*')
    Show Answer

    Solution
    The full solution for this exercise is in the variables-objects directory of the code bundle.

    Bonus Round
    Time Method
    You've learned how to use the documentation and call methods on strings and numbers.
    The Ruby standard library has a host of other classes that you can use in your programs, as well.

    For example, the Time class is useful for working with dates and times.
    Unlike strings and numbers, which we created using literal values, you create a new Time object like this:

    current_time = Time.new
    The Time class has a method called strftime that can format the time in a variety of ways.
    Check out the method's documentation and play around with it in irb until you've got the hang of it.

    Then, back in your studio_game.rb file, print the date and time the game started so that it's formatted like this:

    The game started on Tuesday 03/06/2012 at 10:43AM

    Fundraising Program
    If you're building the fundraising program, your next step is to assign a funding amount to each project. In other words, how much funding does each project have so far? Then, experiment with different formats for printing out each project's name and funding amount.

    The solution for this bonus app exercise is in the variables-objects directory of the code bundle.

    Wrap Up
    Nicely done! Now you have all the game players introducing themselves. In this exercise you learned how to:

    assign variables
    call built-in methods
    pass parameters to methods
    chain together multiple method calls
    look up methods in the Ruby documentation
    But what if you want to do something for which there isn't a built-in Ruby method? Well, then it's time to write your own method! We'll do that in the next section.

    For a quick summary on strings and variables, as well as summaries for the upcoming modules, download the course summary PDF for easy reference.

