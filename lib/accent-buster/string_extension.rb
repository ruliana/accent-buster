module AccentBuster::StringExtension
  # @deprecated Use [Buster] or include [AccentBuster] to use #buster method
  refine String do

    # Convert diacritics chars to their non-diacritic equivalents.
    #
    # Works for latin languages only.
    #
    # Returns a copy of the string with diacritics removed.
    def accent_buster
      self.tr(AccentBuster::Buster::ACCENT_DOWNCASE + AccentBuster::Buster::ACCENT_UPCASE, 
              AccentBuster::Buster::NO_ACCENT_DOWNCASE + AccentBuster::Buster::NO_ACCENT_UPCASE)
    end

    # Convert diacritics chars to their non-diacritic equivalents.
    #
    # Works for latin languages only.
    #
    # Convert the string in place.
    #
    # Returns the string or nil if no changes were made.
    def accent_buster!
      self.tr!(AccentBuster::Buster::ACCENT_DOWNCASE + AccentBuster::Buster::ACCENT_UPCASE, 
               AccentBuster::Buster::NO_ACCENT_DOWNCASE + AccentBuster::Buster::NO_ACCENT_UPCASE)
    end

    def downcase
      super.tr(AccentBuster::Buster::ACCENT_UPCASE, AccentBuster::Buster::ACCENT_DOWNCASE)
    end

    def downcase!
      super
      self.tr!(AccentBuster::Buster::ACCENT_UPCASE, AccentBuster::Buster::ACCENT_DOWNCASE)
    end

    def upcase
      super.tr(AccentBuster::Buster::ACCENT_DOWNCASE, AccentBuster::Buster::ACCENT_UPCASE)
    end

    def upcase!
      super
      self.tr!(AccentBuster::Buster::ACCENT_DOWNCASE, AccentBuster::Buster::ACCENT_UPCASE)
    end
  end
end
