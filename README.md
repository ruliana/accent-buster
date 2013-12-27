# Accent Buster

Add "String#accent\_buster" that replaces diacritics marks by their non-diacritic equivalents.

I made it because I don't want to add "ActiveSupport" to the projects everytime I need that (also, I'm too lazy to type the same thing all the time).

This lib will have NO MORE than the very strictly necessary to replace diacritics, currently, it has 2 methods: "String#accent_buster" and "String#accent_buster!" (note the bang).

## Installation

Add this line to your application's Gemfile:

    gem 'accent-buster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install accent-buster

## Usage

```ruby
'ação'.accent\_buster # => 'acao'
x = 'é você?'
x.accent\_buster!
# => x = 'e voce'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
