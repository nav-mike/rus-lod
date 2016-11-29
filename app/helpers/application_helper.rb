module ApplicationHelper
  def locale_link
    label = locale == :en ? 'RUS' : 'ENG'
    locale_value = locale == :en ? 'ru' : 'en'
    link_to label, "#{url_for}?locale=#{locale_value}"
  end

  def academic_status(uri)
    case uri
    when 'http://vivoplus.aksw.org/ontology#Docent'
      'Доцент'
    when 'http://vivoplus.aksw.org/ontology#Professor'
      'Процессор'
    when 'http://vivoplus.aksw.org/ontology#StarshiiNauchnyiSotrudnik'
      'Старший научный сотрудник'
    else
      ''
    end
  end

  def academic_qualification(uri)
    case uri
    when 'http://lod.ifmo.ru/CandidateOfSciencesInBiologicheskieNauki'
      'Кандидат Биологических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInPsihologicheskihNauk'
      'Кандидат Психологических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInIstoricheskihNauk'
      'Кандидат Исторических Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInMedicinskihNauk'
      'Кандидат Медицинских Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInHimicheskieNauki'
      'Кандидат Химических Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInHimicheskihNauk'
      'Доктор Химических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInFilosofskihNauk'
      'Кандидат Философских Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInTehnicheskihNauk'
      'Доктор Технических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInTehnicheskihNauk'
      'Кадидат Технических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInNauki'
      'Кандидат Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInFizikoMatematicheskihNauk'
      'Кандидат Физико-Математичесикх Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInFizikoMatematicheskihNauk'
      'Доктор Физико-Математических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInMedicinskieNauki'
      'Кандидат Медицинских Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInMedicinskihNauk'
      'Кандидат Медицинских Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInPedagogicheskihNauk'
      'Кандидат Педагогических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInEkonomicheskieNauki'
      'Кандидат Экономических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInGeologoMineralogicheskihNauk'
      'Кандидат Геолого-Минералогических Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInFilosofskihNauk'
      'Доктор Философских Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInFizikoMatematicheskieNauki'
      'Кандидат Физико-Математических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInFilologicheskieNauki'
      'Кандидат Филологических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInFilosofskieNauki'
      'Кандидат Философских Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInEkonomicheskihNauk'
      'Кандидат Экономических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInSociologicheskihNauk'
      'Кандидат Социологических Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInEkonomicheskihNauk'
      'Доктор Экономических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInBiologicheskihNauk'
      'Кадидат Биологических Наук'
    when 'http://lod.ifmo.ru/CandidateOfSciencesInHimicheskihNauk'
      'Кандидат Химических Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInGeograficheskihNauk'
      'Доктор Географических Наук'
    when 'http://lod.ifmo.ru/DoctorOfSciencesInPsihologicheskihNauk'
      'Доктор Психологических Наук'
    else
      ''
    end
  end
end
