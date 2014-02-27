module FormHelper
  def setup_resume(resume)
    resume.educations << Education.new
    resume.experiences << Experience.new
    resume
  end
end

