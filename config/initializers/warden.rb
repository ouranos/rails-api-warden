require Rails.root.join('lib/strategies/authentication_token_strategy')
require Rails.root.join('lib/strategies/basic_auth_strategy')

Warden::Strategies.add(:authentication_token, AuthenticationTokenStrategy)
Warden::Strategies.add(:basic_auth, BasicAuthStrategy)
