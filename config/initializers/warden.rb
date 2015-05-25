require Rails.root.join('lib/strategies/authentication_token_strategy')

Warden::Strategies.add(:authentication_token, AuthenticationTokenStrategy)
