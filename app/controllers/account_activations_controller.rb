class AccountActivationsController < ApplicationController
	before_create :create_activation_digest
	before_save   :downcase_email






	private

  def create_activation_digest
    # Create the token and digest.
  end

  def downcase_email
  	
  end
end
