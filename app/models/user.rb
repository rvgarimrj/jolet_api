class User < ActiveRecord::Base
  # Include default devise modules.
# :confirmable,
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
           :omniauthable
  include DeviseTokenAuth::Concerns::User
  mount_base64_uploader :photo, PhotoUploader
  belongs_to :company, dependent: :destroy
  enum type: [ :dono, :vendedor ]
  validates :kind_of_user, :presence => true

end
