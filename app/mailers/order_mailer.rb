class OrderMailer < ApplicationMailer

  def confirm_mail(user, order)
    @user = user
    for i in (1..@user.orders.last.items.size) do
      attachments[@user.orders.last.items[i-1].image_url] = File.read('app/assets/images/'+@user.orders.last.items[i-1].image_url)
    end

    mail(
      from: "chatonstrognons@gmail.com",
      to: @user.email,
      subject: "lol, ta commande a été enregistrée !"
    )
  end

end
#    delivery_method_options: { api_key: ENV['MAILJETAPIKEY'], secret_key: ENV['MAILJETSECRETKEY'] }
