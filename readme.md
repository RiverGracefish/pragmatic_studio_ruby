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
    	from /Users/RiverGracefish/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'
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
    /Users/.rvm/rubies/ruby-2.1.2/bin/ruby -e $stdout.sync=true;$stderr.sync=true;load($0=ARGV.shift) /Users/RiverGracefish/workspace/self_study/pragmatic_studio/ruby_course/video_2_hello_ruby.rb
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
    /Users/RiverGracefish/.rvm/rubies/ruby-2.1.2/bin/ruby -e $stdout.sync=true;$stderr.sync=true;load($0=ARGV.shift) /Users/RiverGracefish/workspace/self_study/pragmatic_studio/ruby_course/studio_game/studio_game_2.rb
    Welcome!
    WELCOME!
    WELCOME!
    WELCOME!
    2015-05-21 20:29:53 -0600

    Process finished with exit code 0
