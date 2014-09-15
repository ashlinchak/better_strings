require 'spec_helper'

describe BetterStrings do

	describe '#count_words' do
		S = "Lorem ipsum ipsum"

		it "count frequency words" do
			expect(S.count_words).to  eq({"lorem" => 1, "ipsum" => 2})
		end
	end

	describe '#valid_email?' do

		context 'when valid email' do
			valid_email_1 = "mail@mail.com"

			it {expect(String.valid_email?(valid_email_1)).to be_truthy} 					
		end

		context 'when not valid email' do
			fake_email_1 = "mail@mail"
			fake_email_2 = "mail@mail."

			it{expect(String.valid_email?(fake_email_1)).to be_falsey}
			it{expect(String.valid_email?(fake_email_2)).to be_falsey}
		end

	end

	describe '#words' do
		s = "Lorem ipsum dolor sit amet, id"
		result = %w{Lorem ipsum dolor sit amet id}

		it "get words from string" do
			expect(s.words).to  match_array(result)
		end
	end

	describe '#biggest_word' do
		s = "Lorem ipsum dolor sit amet, id"
		result = ["Lorem", "ipsum", "dolor"]

		it "get biggest word from string" do
			expect(s.biggest_word).to  match_array(result)
		end
	end

	describe '#smallest_word' do
		s = "Lorem ipsum dolor sit amet, id"
		result = ["id"]

		it "get smallest word from string" do
			expect(s.smallest_word).to  match_array(result)
		end
	end
end
