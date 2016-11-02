json.array!(@result) do |asset|
  json.name asset[:name].value if asset[:name].present?

  json.name "#{asset[:first_name].value} #{asset[:last_name].value}" if asset[:first_name].present? && asset[:last_name].present?

  json.name asset[:label].value if asset[:label].present?

  json.id asset[:department].value if asset[:department].present?

  json.id asset[:person].value if asset[:person].present?

  json.id asset[:research_area].value if asset[:research_area].present?
end
