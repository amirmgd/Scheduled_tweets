# email:string
# password_digest
# 
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password
    
    validates:email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "باید یک آدرس ایمیل معتبر باشد"}
end
