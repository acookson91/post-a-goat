class Friend < ActiveRecord::Base
  belongs_to :user

  def as_json(options={})
    super(:only => [:id, :name, :phone_number])
  end
end
