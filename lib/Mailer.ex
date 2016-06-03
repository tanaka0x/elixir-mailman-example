defmodule Mailer do
  def deliver(email) do
    # CC or BCCを利用する場合、:send_cc_and_bccが必要
    Mailman.deliver(email, config, :send_cc_and_bcc)
  end

  def config do
    %Mailman.Context{
      config: %Mailman.SmtpConfig{
        relay: "smtp.gmail.com",
        username: "USERNAME",
        password: "PASSWORD",
        port: 587,
        auth: :always,
        tls: :always
      },
      composer: %Mailman.EexComposeConfig{
        html_file: false,
        text_file: true,
        text_file_path: "lib/templates/"
      }
    }
  end
end
