module AccentBuster::StringExtension
  # @deprecated Use [Buster] or include [AccentBuster] to use #buster method
  refine String do
    ACCENT_DOWNCASE    = "áéíóúâêîôûäëïöüãõñç"
    NO_ACCENT_DOWNCASE = "aeiouaeiouaeiouaonc"
    ACCENT_UPCASE      = "ÁÉÍÓÚÂÊÎÔÛÄËÏÖÜÃÕÑÇ"
    NO_ACCENT_UPCASE   = "AEIOUAEIOUAEIOUAONC"

    # Convert diacritics chars to their non-diacritic equivalents.
    #
    # Works for latin languages only.
    #
    # Returns a copy of the string with diacritics removed.
    def accent_buster
      self.tr(ACCENT_DOWNCASE + ACCENT_UPCASE, NO_ACCENT_DOWNCASE + NO_ACCENT_UPCASE)
    end

    # Convert diacritics chars to their non-diacritic equivalents.
    #
    # Works for latin languages only.
    #
    # Convert the string in place.
    #
    # Returns the string or nil if no changes were made.
    def accent_buster!
      self.tr!(ACCENT_DOWNCASE + ACCENT_UPCASE, NO_ACCENT_DOWNCASE + NO_ACCENT_UPCASE)
    end

    def downcase
      super.tr(ACCENT_UPCASE, ACCENT_DOWNCASE)
    end

    def downcase!
      super
      self.tr!(ACCENT_UPCASE, ACCENT_DOWNCASE)
    end

    def upcase
      super.tr(ACCENT_DOWNCASE, ACCENT_UPCASE)
    end

    def upcase!
      super
      self.tr!(ACCENT_DOWNCASE, ACCENT_UPCASE)
    end
  end
end
