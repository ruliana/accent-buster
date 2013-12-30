# Accent Buster

Add "String#accent\_buster" that replaces diacritics marks by their non-diacritic equivalents.

Modify "String#downcase", "String#downcase!", "String#upcase", "String#upcase!" to correctly handle diacritics.

I made it because I don't want to add "ActiveSupport" to the projects everytime I need that (also, I'm too lazy to type the same thing all the time).

BTW, if you want to get really serious on that, the gem "UnicodeUtils" is a far better (and more complete) option. ^\_^

Accent Buster uses refinements, so, ruby 2.0+ only.

## Installation

Add this line to your application's Gemfile:

    gem 'accent-buster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install accent-buster

## Usage

```ruby
# Refinements!
using AccentBuster::StringExtension

'ação'.accent_buster # => 'acao'
x = 'é você?'
x.accent_buster!
# => x = 'e voce'

'ação'.upcase # => 'AÇÃO'
x = 'é você?'
x.upcase!
# => x = 'É VOCÊ?'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
