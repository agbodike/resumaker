module FormHelper
  def setup_resume(resume)
    resume.educations << Education.new
    resume.experiences << Experience.new
    resume.experiences.each do |ex|
      ex.experience_items << ExperienceItem.new
    end
    resume
  end
end

