class Session < ActiveRecord::Base
	has_secure_password



# 	user.authenticate('notright')
# user.authenticate('mUc3m00RsqyRe')
# User.find_by(name: 'david').try(:authenticate, 'notright')
# User.find_by(name: 'david').try(:authenticate, 'mUc3m00RsqyRe')
end
