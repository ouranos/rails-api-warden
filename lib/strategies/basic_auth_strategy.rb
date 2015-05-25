class BasicAuthStrategy < ::Warden::Strategies::Base
  def auth
    @auth ||= Rack::Auth::Basic::Request.new(env)
  end

  def valid?
    auth.provided? && auth.basic? && auth.credentials
  end

  def authenticate!
    user = User.find_by_username(auth.credentials[0])
    if user && user.authenticate(auth.credentials[1])
      success!(user)
    else
      fail!('strategies.basic_auth.failed')
    end
  end
end
