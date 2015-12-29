module BetterStrings
  module	Extensions
    # These methods are all icluded in  the String class.
    module PublicInstanceMethods
      # Get words from string
      #
      #   s = "word_1 word_2 word_2"
      #   s.words
      #   => ["word_1", "word_2", "word_2"]
      def words
        gsub(/[!?,.]/,' ').split(/\s+/)
      end

      # Count inuque words in the String object and return Hash.
      #
      #   s = "word_1 word_2 word_2"
      #   s.count_words
      #   => {"word_1" => 1, "word_2" => 2 }
      def count_words
        words = Hash.new(0)
        downcase.scan(/\w+/) { |word| words[word] += 1 }
        return words
      end

      # Get biggest word from string.
      #
      #   s = "word word_1"
      #   s.biggest_word
      #   => ["word_1"]
      def biggest_word
        words.group_by(&:size).max.last
      end

      # Get smallest word from string.
      #
      #   s = "word word_1"
      #   s.smallest_word
      #   => ["word"]
      def smallest_word
        words.group_by(&:size).min.last
      end

    end

    # These methods are extended onto the String class itself.
    module PublicClassMethods
      # Check if string is valid email
      #
      #   s = "mail@mail.com"
      #   String.valid_email?(s)
      #   => true
      def valid_email?(string)
        pattern = /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
        !!(pattern =~ string)
      end
    end

  end
end
