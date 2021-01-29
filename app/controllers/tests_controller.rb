class TestsController < ApplicationController
    
    def index
        
    end
    
    def show
        @tests = Test.all
        @test = Test.new
    end
    
    def create
      Test.create(test_params)
      @tests = Test.all
    end
        
    def destroy
      Test.find(params[:id]).destroy
      @tests = Test.all
    end
    
    
    private
    def test_params
        params.require(:test).permit(:text)
    end
    
end
