class Student
  attr_accessor :name, :photo_url, :section, :twitter

  def introduce
    return "      <li>
                    <img src='#{self.photo_url}'>
                    <h3><a href='https://twitter.com/#{self.twitter}'>#{self.name}</a></h3>
                  </li>"
  end
end

# r = Student.new
# r.name = "Raghu Betina"
# r.photo_url = "https://graph.facebook.com/rbetina/picture"
# r.section = "AM"
# r.twitter = "@rbetina717"

# j = Student.new
# j.name = "Jeff Cohen"
# j.photo_url = "https://graph.facebook.com/rbetina/picture"
# j.section = "AM"
# j.twitter = "@jeffcohen"

# students = Array.new
# ## students = []

# students.push(r)
# ## students << r

# students.push(j)

# students.each do |stu|
#   puts stu.name
# end
