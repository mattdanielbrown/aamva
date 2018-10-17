# frozen_string_literal: true

module AAMVA
  module Standard
    module TwentySixteen
      class Data
        attr_reader :header, :subfile_designators, :subfiles

        def initialize(header:, subfile_designators:, subfiles:)
          @header = header
          @subfile_designators = subfile_designators
          @subfiles = subfiles
        end
      end
    end
  end
end
