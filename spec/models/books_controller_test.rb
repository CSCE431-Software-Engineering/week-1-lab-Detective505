require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'Sample Book'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Sample Book')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[author]", with: 'C.S. Lewis'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('C.S. Lewis')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[price]", with: "19.50"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('19.50')
  end
end
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[published_date]", with "1950-01-01"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1950-01-01')
  end
end