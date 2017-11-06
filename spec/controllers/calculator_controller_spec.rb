require 'rails_helper'

RSpec.describe CalculatorController, type: :controller do
  describe "GET add" do
    it 'adds all parameters' do
      get :add, params: { first: 1, second: 3 }

      expect(response.status).to eq(200)

      response_json = JSON.parse(response.body)

      expected_response = {
        'params' => [
          { "name" => "first", "value" => 1 },
          { "name" => "second", "value" => 3 },
        ],
        "operation" => "add",
        "result" => 4
      }

      expect(response_json).to eq(expected_response)
    end
  end
end
