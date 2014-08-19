# Hamburger

Hamburger is designed to easily transfer data from one SQL database to another
using JSON and active record.  By dumping the data to JSON the data remains
database agnostic to be uploaded later.

## Installation

Add this line to your application's Gemfile:

    gem 'hamburger'

And then execute:

    $ bundle


## Usage

_Saving Data:_

1.  rake db:schema:dump
2.  rake hamburger:dump
3.  If any models are off from what they may be in console write them to hamburger_model.txt as a hash.  For example Paper Trail's Version would be the following hash {version: "PaperTrail::Version"}

_Restoring Data:_
1. rake db:schema:load
2. rake hamburger:load
3. You're done.

## Contributing

1. Fork it ( https://github.com/plowdawg/hamburger/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
