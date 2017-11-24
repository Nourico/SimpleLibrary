module ApplicationHelper
  def rent_it(book, user)
    book.quantity = book.quantity - 1
    book.users << user
    book.save
  end

  def return_it(book, user)
    book.quantity = book.quantity + 1
    book.users.delete(user)
    book.save
  end
end
