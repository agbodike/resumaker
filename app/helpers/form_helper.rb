module FormHelper
  def setup_resume(resume)
    resume.educations << Education.new unless resume.educations.count > 0
    resume
  end
end

