class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # @attribute name [Room] The name of the object
  # @association relatedObjs [Array<AnotherClass>] Objects needed to perform a certain function
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
