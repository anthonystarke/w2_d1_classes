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
    book_details = get_book_info(book_name)
    return book_details[:rental_details]
  end

  def add_book(new_book_title)
    new_book =
    {
        title: new_book_title,
        rental_details: {
          student_name: "",
          date: ""
        }
    }
    @books << new_book
  end

  def change_book_details(book_name,new_student,new_date)
    book_to_change = get_book_info_rental(book_name)
    book_to_change[:student_name] = new_student
    book_to_change[:date] = new_date
  end

end
