require 'spec_helper'

describe EvaluacionsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'evaluar_consecuencia'" do
    it "returns http success" do
      get 'evaluar_consecuencia'
      response.should be_success
    end
  end

end
