require "base64"
require 'json'
require 'net/https'
require 'uri'

require 'emarsys/client'
require 'emarsys/extensions'
require 'emarsys/request'
require 'emarsys/response'

require 'emarsys/data_objects/base'
require 'emarsys/data_objects/condition'
require 'emarsys/data_objects/contact_list'
require 'emarsys/data_objects/email'
require 'emarsys/data_objects/email_category'
require 'emarsys/data_objects/event'
require 'emarsys/data_objects/export'
require 'emarsys/data_objects/field'
require 'emarsys/data_objects/file'
require 'emarsys/data_objects/folder'
require 'emarsys/data_objects/form'
require 'emarsys/data_objects/language'
require 'emarsys/data_objects/segment'
require 'emarsys/data_objects/source'

require "emarsys/version"

module Emarsys

  class << self

    attr_accessor :api_endpoint, :api_username, :api_password

    ## Returns the domain which should be used to query the API
    def api_endpoint
      @api_endpoint ||= 'https://suite5.emarsys.net/api/v2'
    end

    # Set configuration options using a block
    def configure
      yield self
    end

  end
end