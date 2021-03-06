require 'omniauth/strategies/base'

module OmniAuth
  module Strategies
    class Wechat < OmniAuth::Strategies::Base
      option :client_options, {
        :site => 'https://api.weixin.qq.com',
        :authorize_url => 'https://open.weixin.qq.com/connect/qrconnect',
        :token_url => "https://api.weixin.qq.com/sns/oauth2/access_token"
      }
    end
  end
end

OmniAuth.config.add_camelization('wechat', 'Wechat')
