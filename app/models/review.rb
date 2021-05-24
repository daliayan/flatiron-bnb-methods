class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"

  validates :rating, presence: true
  validates :description, presence: true
  validates :reservation, presence: true

  # validate :checked_out
  # validate :accepted_reservation
  

  # private

  # def checked_out
  #   if reservation && reservation.check_out > Date.today
  #     errors.add(:reservation, "Reservation must end to leave a review!")
  #   end
  # end

  # def accepted_reservation
  #   if reservation.try(:status) != 'accepted'
  #     errors.add(:reservation, "Reservation must be accepted to leave a review!")
  #   end
  # end

end
