class Book
    def title
        @title
    end

    def title=(title)
        exceptions = ['a', 'an', 'and', 'the', 'in', 'of']

        @title = title.split.map.with_index do |word, index| 
            if !exceptions.include? word or index == 0
                word.capitalize
            else
                word
            end
        end.join ' '

    end

end
