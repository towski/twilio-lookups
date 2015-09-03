require 'net/http'
require 'net/https'
require 'builder'
require 'multi_json'
require 'cgi'
require 'openssl'
require 'base64'
require 'forwardable'
require 'jwt'

require 'twilio-lookups/version' unless defined?(TwilioLookups::VERSION)
require 'twilio-lookups/util'
require 'twilio-lookups/rest/utils'
require 'twilio-lookups/rest/errors'
require 'twilio-lookups/util/client_config'
require 'twilio-lookups/rest/lookups_client'
require 'twilio-lookups/rest/instance_resource'
require 'twilio-lookups/rest/list_resource'
require 'twilio-lookups/rest/next_gen_list_resource'
require 'twilio-lookups/rest/lookups/phone_numbers'

module TwilioLookups
  extend SingleForwardable

  def_delegators :configuration, :account_sid, :auth_token

  ##
  # Pre-configure with account SID and auth token so that you don't need to
  # pass them to various initializers each time.
  def self.configure(&block)
    yield configuration
  end

  ##
  # Returns an existing or instantiates a new configuration object.
  def self.configuration
    @configuration ||= Util::Configuration.new
  end
  private_class_method :configuration
end
