class SnackMachinesController < ApplicationController

  def new
    @machine = Machine.find(params[:machine_id])
    @snack = Snack.find(params[:snack_id])
    SnackMachine.new
  end

end
