class OrderMailer < ApplicationMailer

  def confirm_mail(user)
    @user = user
    file_path = 'app/assets/images/'+@user.cart.items.first.image_url
    for i in (1..@user.items.size) do
      attachments[@user.items[i-1].image_url] = File.read('app/assets/images/'+@user.items[i-1].image_url)
    end

    mail(
      from: "chatonstrognons@gmail.com",
      to: @user.email,
      subject: "lol, ta commande a été enregistrée !"
    )
  end

end
#    delivery_method_options: { api_key: ENV['MAILJETAPIKEY'], secret_key: ENV['MAILJETSECRETKEY'] }
