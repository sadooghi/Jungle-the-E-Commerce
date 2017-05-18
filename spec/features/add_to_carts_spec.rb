require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true  do
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "by pushing add to cart, the top nav bar my cart change from 0 to 1" do
    visit root_path

 #    link = page.find('.navbar ul.nav .shopping-cart-size a').text

	# match = link.match(/^My Cart \((\d+)\)$/)
	
	# expect(match[1].to_i).to eq 0

	# page.find('article.product:first-child').click_link('Add')

	# link = page.find('.navbar ul.nav .shopping-cart-size a').text

	# match = link.match(/^My Cart \((\d+)\)$/)	

	# expect(match[1].to_i).to eq 2

	# expect{}.to change{}.by()
	# expect{}.to change{}.from(false).to(true)
	# expect{}.to change{}.from("hello").to("Hello")

	expect {	page.find('article.product:first-child').click_link('Add')}.to change {
		    link = page.find('.navbar ul.nav .shopping-cart-size a').text

			match = link.match(/^My Cart \((\d+)\)$/)
			
			match[1].to_i
		}.by (1)
  end
end
