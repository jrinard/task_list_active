class Task < ActiveRecord::Base
  belongs_to(:list)
  # validates empty field
  validates(:description, :presence => true)
  # validates length of text
  validates(:description, {:presence => true, :length => { :maximum => 50 }})
  before_save(:downcase_description)

  scope(:not_done, -> do
    where({:done => false})
  end)

private

  # Makes input downcase as it is saved
  define_method(:downcase_description) do
    self.description=(description().downcase())
  end
end
