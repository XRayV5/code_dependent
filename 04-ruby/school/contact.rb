# name
# phone number
# address
# email
# organization
# fax
# dob
# social links

# relationships
# saving to file or database
# delete
# edit

class Contact

  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

  def set_name(name)
    @name = name
  end

  def save
    if @name == ''
      return false
    end
  end

end

contact1 = Contact.new('ray')