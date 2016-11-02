json.array!(@result) do |asset|
  if asset[:name].present?
    json.name asset[:name].value
  end
  
  if asset[:first_name].present? && asset[:last_name].present?
    json.name "#{asset[:first_name].value} #{asset[:last_name].value}"
  end
  
  if asset[:label].present?
    json.name asset[:label].value
  end
  
  if asset[:department].present?
    json.id asset[:department].value
  end
  
  if asset[:person].present?
    json.id asset[:person].value
  end
  
  if asset[:research_area].present?
    json.id asset[:research_area].value
  end
end
