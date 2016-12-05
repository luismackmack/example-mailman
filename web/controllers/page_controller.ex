defmodule Conmailman.PageController do
  use Conmailman.Web, :controller

  def index(conn, _params) do

    email = %Mailman.Email{
      subject: "Hello Mailman!",
      from: "nadaquever@gmail.com",
      to: ["luis@systrix.net", "angel@systrix.net"],          
      text: "Saludos Luis Angel",
      html: Phoenix.View.render_to_string(Conmailman.PageView,"mailer.html", nombre: "Angel Gonzalez, Luis Garcia", foo: "bar")
      }
    result = Conmailman.Mailman.deliver(email)
    IO.inspect "-------------------"
    IO.inspect result
    render conn, "index.html"
  end
end
