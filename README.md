# Command Line Classmates

This tiny app was a project created while at the [Flatiron School's Full-Stack Immersive Bootcamp](https://flatironschool.com/programs/nyc-software-engineering-immersive/).  It is a command-line tool that scrapes the contact information of the students in BK001 from our profile website using Nokogiri. Then it opens the contact page of the desired student with launchy.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

You will need to install [`ruby`](https://www.ruby-lang.org/en/downloads/) and these gems:
[`awesome_print`](https://github.com/awesome-print/awesome_print)
[`launchy`](https://rubygems.org/gems/launchy)
[`nokogiri`](https://rubygems.org/gems/nokogiri)


### Installing

A step by step series of examples that tell you have to get a development env running

First you will need to clone [the repo](https://github.com/MrSnickers/Command_Line_Classmates) here to your local computer.
```
git clone https://github.com/MrSnickers/Command_Line_Classmates.git
```

## Running the tests

The tests are run with [`Rspec`](http://rspec.info/).
```
cd spec
rspec scraper_spec.rb
rspec student_spec.rb
```
