require 'rails_helper'

RSpec.describe "challenges/index.html.erb", type: :view do
  context "with new challenges" do
    before(:each) do
      assign(:challenges,[
       Challenge.create!(
          c_type: "algorithme",
          level: "easy",
          challenge_slug: "i'm fake",
          challenge_description: Faker::Lorem.paragraph(sentence_count: 2),
          challenge_img: "https://picsum.photos/600/400",
          challenge_link: Faker::Internet.url,
          challenge_name: Faker::Name.first_name,
        )]
      )
    end

    it "displays all challenges" do
      render
      expect(rendered).to match /challenge__main/
    end
  end


end
