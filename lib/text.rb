require 'rubygems'
require 'twilio-ruby'

module Text

	def time
		@one_hour_from_now = "#{Time.now.hour.next}:#{Time.now.min}"
	end

	def send_text
		account_sid = 'ACc36ee9ccdc509580db7161dd88669a8e'
		auth_token = '861bfe0a7073153f9f735baf1145adf1'
		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.sms.messages.create(:body => "Thank you for your order! It will be delivered to you at #{@one_hour_from_now}.",
			:to => "+447967764771",
			:from => "+441202835749")
		puts message.sid
	end

end
