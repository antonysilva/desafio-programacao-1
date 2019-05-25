# frozen_string_literal: true

class UploadsController < ApplicationController
  def new
  end

  def create
    @purchases = parse_file
  end

  private

  def parse_file
    PurchasesFileParser.new(params[:file]).parse if params[:file]
  end
end
