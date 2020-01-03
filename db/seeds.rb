diseases = %w[migraine meningitis liver_cancer intestinal_blockage heart_attack ear_infection vertigo
              bronchiectasis bronchiolitis cystic_fibrosis concussions scleroderma
              rheumatoid_arthritis ulcerative_colitis myelofibrosis lupus_erythematosus anaemia pneumonia
              haemophilia pulmonary_oedema fever pulmonary_fibrosis insanity necrosis]

diseases.each { |disease| Disease.create(name: disease, symptoms: Disease::SYMPTOMS.sample(5)) }

FactoryBot.create_list(:physician, 10)
