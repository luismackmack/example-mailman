defmodule Conmailman.Mailman do
	def deliver(email) do
      Mailman.deliver(email, config)
    end
	def config do
	  %Mailman.Context{
	   config: %Mailman.SmtpConfig{ relay: "smtp.gmail.com",                 
	                                port: 465,
	                                username: "noreplypqs@gmail.com",
	                                password: "pruebadeemail",
	                                ssl: true, tls: true, auth: true },                                            
	   composer: %Mailman.EexComposeConfig{}
	  }
	end	
end	


