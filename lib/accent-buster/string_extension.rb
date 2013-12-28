module AccentBuster::StringExtension
  refine String do
    # Convert diacritics chars to their non-diacritic equivalents.
    #
    # Works for latin languages only.
    #
    # Returns a copy of the string with diacritics removed.
    def accent_buster
      self.tr('áéíóúâêîôûäëïöüãõñçÁÉÍÓÚÂÊÎÔÛÄËÏÖÜÃÕÑÇ', 'aeiouaeiouaeiouaoncAEIOUAEIOUAEIOUAONC')
    end

    # Convert diacritics chars to their non-diacritic equivalents.
    #
    # Works for latin languages only.
    #
    # Convert the string in place.
    #
    # Returns the string or nil if no changes were made.
    def accent_buster!
      self.tr!('áéíóúâêîôûäëïöüãõñçÁÉÍÓÚÂÊÎÔÛÄËÏÖÜÃÕÑÇ', 'aeiouaeiouaeiouaoncAEIOUAEIOUAEIOUAONC')
    end
  end
end
