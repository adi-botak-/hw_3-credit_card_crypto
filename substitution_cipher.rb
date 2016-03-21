module SubstitutionCipher
  module Caesar
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caesar cipher
      if key > 0
        document.to_s.chars.map { |d| (d.ord + key).chr }.join
      else
        caesar_error
      end
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caesar cipher
      if key > 0
        document.to_s.chars.map { |d| (d.ord - key).chr }.join
      else
        caesar_error
      end
    end

    def caesar_error
      "Key must be positive!"
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using a permutation cipher
      if key > 0
        lookup_table = (0..127).to_a.shuffle(random: Random.new(key))
        document.to_s.chars.map { |d| lookup_table[d.ord].chr }.join
      else
        permutation_error
      end
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using a permutation cipher
      if key > 0
        lookup_table = (0..127).to_a.shuffle(random: Random.new(key))
        document.to_s.chars.map { |d| lookup_table.index(d.ord).chr }.join
      else
        permutation_error
      end
    end

    def permutation_error
      "Key must be positive!"
    end
  end
end
