defmodule Mail do
  def run do
    {_, msg} = send
    IO.puts msg
  end

  def send do
    Mailer.deliver(contents)
  end

  def contents do
    %Mailman.Email{
      subject: "subject",
      from: "FROM",
      to: ["TO"],
      bcc: ["BCC"],
      data: [], # テンプレートを使う場合、必須
      text: "mailer.txt.eex"
    }
  end
end
