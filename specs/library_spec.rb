require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestBankAccount < MiniTest::Test

  def setup

    @list_of_books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "Tom and Jerry",
        rental_details: {
          student_name: "John",
          date: "11/10/10"
        }
      },
      {
        title: "PhatCat",
        rental_details: {
          student_name: "Tim",
          date: "21/11/11"
      }
    }
  ]

    @my_library = LibraryClass.new(@list_of_books)
  end

  def test_get_books
    assert_equal(@list_of_books,@my_library.books)
  end

  def test_get_book_info
    book_to_test = {
      title: "Tom and Jerry",
      rental_details: {
        student_name: "John",
        date: "11/10/10"
      }
    }
    assert_equal(book_to_test,@my_library.get_book_info("Tom and Jerry"))
  end

  def test_get_book_rental_info
    book_to_test = {
      student_name: "John",
      date: "11/10/10"
    }
    assert_equal(book_to_test,@my_library.get_book_info_rental("Tom and Jerry"))
  end

  def test_add_book

    book_to_test = {
      title: "Jaws",
      rental_details: {
         student_name: "",
         date: ""
       }
    }
    @my_library.add_book("Jaws")
    assert_equal(book_to_test,@my_library.get_book_info('Jaws'))
  end

  def test_change_rental_details

    book_to_test = {
      title: "PhatCat",
      rental_details: {
         student_name: "Johny English",
         date: "01/01/19"
       }
    }
    @my_library.change_book_details("PhatCat","Johny English","01/01/19")
    assert_equal(book_to_test, @my_library.get_book_info('PhatCat'))

  end

end
