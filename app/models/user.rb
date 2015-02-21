class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # @!attribute name
  #   @return [String] The name of the task.

  # @!attribute description
  #   @return [String] The description of the task.

  # @!attribute active
  #   @return [Boolean] Marks whether the task is active or not.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
