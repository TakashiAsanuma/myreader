class MyreadsController < ApplicationController

  def edit
    @myreads = Myread.where(user_id: current_user.id, region: current_user.region)
  end

  def update
    params.permit(myreads: [:enabled])[:myreads].map do |id, myread_param|
      myread = Myread.find(id)
      myread.update!(myread_param)
    end
    redirect_to edit_myreads_url  
  end
end
