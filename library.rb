class LibraryClass

attr_accessor :books

  def initialize(books)
    @books = books
  end

  def get_book_info(book_name)
    for book in @books
      if book[:title] == book_name
        return book
      end
    end
  end

  def get_book_info_rental(book_name)
    for book in @books
      if book[:title] == book_name
        return book[:rental_details]
      end
    end
  end

  def add_book(new_book)
    new_book[:rental_details] =
    {
       student_name: "",
       date: ""
     }
    @books << new_book
  end

  def change_book_details(book_name,new_student,new_date)

    for book in @books
      if book[:title] == book_name
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:date] = new_date
      end
    end
  end

end
