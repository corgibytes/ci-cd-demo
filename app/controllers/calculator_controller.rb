class CalculatorController < ApplicationController
  def add
    response = {
      params: [],
      operation: 'add',
      result: 0
    }

    request.query_parameters.each do |key, value|
      response[:params] << { name: key, value: value.to_i }
      response[:result] += value.to_i
    end

    render json: response
  end
end
