class StartEndTimeValidator < ActiveModel::Validator
  def validate(record)
    return if record.end_at.blank? || record.start_at.blank?
    record.errors[:end_at] << I18n.t('.error_in_validation_end_at') if record.end_at < record.start_at
  end
end
