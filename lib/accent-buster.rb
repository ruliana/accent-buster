require "accent-buster/version"
require "accent-buster/string_extension"
require "accent-buster/buster"

module AccentBuster
  # Wrap an object to add accent wise (diacritic wise)
  # methods.
  #
  # It works for latin languages only.
  #
  # @see Buster#bust
  # @return [Buster] object with extra methods.
  def buster
    Buster.new(self)
  end
end
