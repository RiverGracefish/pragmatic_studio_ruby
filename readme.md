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
    
