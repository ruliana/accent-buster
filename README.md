# Accent Buster (2.0)

Extra methods do deal with diacritics (accent) in latin languages.

They replace diacritcs by their non-diacritic equivalents. Example: "ação" becomes "acao".

I made it because I don't want to add "ActiveSupport" to the projects everytime I need that (also, I'm too lazy to type the same code all the time).

BTW, if you want to get really serious on that, the gem "UnicodeUtils" is a far better (and more complete) option. ^\_^

## Note on version 2.0

I gave up on the "Refinement" idea of the previous version. Reason? I use this A LOT and, for some (unconventional) cases, I had to make fancy maneuvers to be able to use it. Meh :p

The support for Refinement is still here, maybe I never remove it. However, I added 2 other usage options (explained below in "Usage").

## Installation

Add this line to your application's Gemfile:

    gem 'accent-buster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install accent-buster

## Usage (plain object)

If you need a "no fluffy, no magic" version, this one is for you. Just a Plain Old Ruby Object`.tm`

```ruby
require 'accent-buster'

# Bust accents
AccentBuster::Buster.new('ação').bust # => 'acao'

# Bust accents (with include)
include AccentBuster
x = Buster.new('é você?')
x.bust # => x = 'e voce'

# Upcase
Buster.new('ação').up # => 'AÇÃO'

# Downcase
Buster.new('É VocÊ?').downcase # => 'é você?'
```

## Usage (monkey patch - my favorite #shame)

Just one method added to String: #buster. This should reduce the chance of name collision and it keeps the API clean and extensible.

If you are using it for applications, I recommend use it this way. If you are making a gem, avoid this.

```ruby
require 'accent-buster/monkey_patch_string'

# Bust accents
'ação'.buster.bust # => 'acao'

# Upcase
'ação'.buster.up # => 'AÇÃO'

# Downcase
'É VocÊ?'.buster.down # => 'é você?'
```

## Usage (with refinements)

Safe, clean and "modern". :p

```ruby
require 'accent-buster'

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
6. Wait, have a cake, enjoy!