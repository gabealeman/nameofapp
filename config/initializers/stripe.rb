if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_e1l7vPLABo2UKTTdax9yq1XN',
    :secret_key => 'sk_test_dd5W8ZdI4k63L47bXFIjFyf7'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]