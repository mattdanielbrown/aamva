# frozen_string_literal: true

require 'faker'

module AAMVA
  class Generator
    def self.dau
      "073 in"
    end

    def self.dag
      truncate(Faker::Address.street_address, length: 35)
    end

    def self.dai
      truncate(Faker::Address.city, length: 20)
    end

    def self.daj
      chars = ('A'..'Z').to_a

      chars.sample(2).join('')
    end

    def self.dca
      chars = ('A'..'Z').to_a + ('0'..'9').to_a

      chars.sample(6).join('')
    end

    def self.dcf
      chars = ('A'..'Z').to_a + ('0'..'9').to_a

      chars.sample(25).join('')
    end

    def self.dak
      chars = ('A'..'Z').to_a + ('0'..'9').to_a

      chars.sample(11).join('')
    end

    def self.dde
      TRUNCATION_INDICATORS.sample
    end

    def self.ddf
      TRUNCATION_INDICATORS.sample
    end

    def self.ddg
      TRUNCATION_INDICATORS.sample
    end


    def self.dcg
      DCG_MAPPING.keys.sample
    end

    # Customer ID Number

    def self.daq
      chars = ('A'..'Z').to_a + ('0'..'9').to_a

      chars.sample(25).join('')
    end

    # Physical Description - Eye Color

    def self.day
      DAY_MAPPING.keys.sample
    end

    def self.dac
      Faker::Name.first_name[0..MAX_DAC_LENGTH]
    end

    # Date of Birth

    def self.dbb
      Faker::Date.birthday.strftime(DATE_FORMATS[:usa])
    end

    # Document Issue Date

    def self.dbd
      Faker::Date.backward.strftime(DATE_FORMATS[:usa])
    end

    private

    def self.truncate(data_element, length:)
      data_element[0, length - 1]
    end
  end
end
