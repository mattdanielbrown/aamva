# frozen_string_literal: true

require 'aamva/version'
require 'aamva/card'
require 'aamva/cli'
require 'aamva/generator'
require 'aamva/info'
require 'aamva/validator'

module AAMVA
  SPECIAL_CHARACTERS = "!\"#%&'()*+,-./:;<=>?[\\]^_@ ".chars
  UPPER_ALPHA_CHARACTERS = ("A".."Z").to_a
  LOWER_ALPHA_CHARACTERS = ("a".."z").to_a
  ALPHA_CHARACTERS =  UPPER_ALPHA_CHARACTERS + LOWER_ALPHA_CHARACTERS
  NUMERIC_CHARACTERS = ("0".."9").to_a

  CARD_TYPES = ["dl", "id"]

  LENGTH_UNITS = ["in", "cm"]

  DAY_LENGTH = 3
  MAX_DAC_LENGTH = 40

  DATE_FORMATS = {
    :can => '%Y%m%d',
    :usa => '%m%d%Y'
  }

  REQUIRED_DATA_ELEMENTS = [
    :dca,
    :dcb,
    :dcd,
    :dba,
    :dcs,
    :dac,
    :dad,
    :dbd,
    :dbc,
    :day,
    :dau,
    :dag,
    :dai,
    :daj,
    :dak,
    :daq,
    :dcf,
    :dde,
    :ddf,
    :ddg,
  ]

  DCG_MAPPING = {
    'USA' => 'USA',
    'CAN' => 'CAN'
  }.freeze

  DBC_VALUES = ['1', '2', '9'].freeze

  DAY_MAPPING = {
    'BLK' => 'Black',
    'BLU' => 'Blue',
    'BRO' => 'Brown',
    'GRY' => 'Gray',
    'GRN' => 'Green',
    'HAZ' => 'Hazel',
    'MAR' => 'Maroon PNK Pink',
    'DIC' => 'Dichromatic UNK Unknown'
  }.freeze
end
