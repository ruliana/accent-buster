class AccentBuster::Buster
  ACCENT_DOWNCASE    = "áéíóúâêîôûäëïöüãõñç"
  NO_ACCENT_DOWNCASE = "aeiouaeiouaeiouaonc"
  ACCENT_UPCASE      = "ÁÉÍÓÚÂÊÎÔÛÄËÏÖÜÃÕÑÇ"
  NO_ACCENT_UPCASE   = "AEIOUAEIOUAEIOUAONC"

  # Wrap an object to add accent wise (diacritic wise)
  # methods.
  #
  # It works for latin languages only.
  #
  # @param a_string [#to_s]
  def initialize(a_string)
    @a_string = a_string.to_s
  end

  # Convert diacritics chars to their non-diacritic equivalents.
  #
  # "áéíóú âêîôû äëïöü ãõ ñç" => "aeiou aeiou aeiou ao nc"
  #
  # @return the string with diacritics removed.
  def bust
    @a_string.tr(ACCENT_DOWNCASE + ACCENT_UPCASE, NO_ACCENT_DOWNCASE + NO_ACCENT_UPCASE)
  end

  # Upcase the string, correctly converting diacritcs.
  #
  # Example: "ótimo" => "ÓTIMO"
  #
  # @return the string upper case
  def up
    @a_string.tr(ACCENT_DOWNCASE, ACCENT_UPCASE).upcase
  end

  # Downcase the string, correctly converting diacritcs.
  #
  # Example: "ÓTIMO" => "ótimo"
  #
  # @return the string lower case
  def down
    @a_string.tr(ACCENT_UPCASE, ACCENT_DOWNCASE).downcase
  end
end