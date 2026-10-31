defmodule Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsMP do
  # import Osteoporosis.DSL
  
  defmacro indicated_agents_m_p do
  quote do
    
    indicated_agent :metformin do
      description "A first-line oral biguanide anti-hyperglycemic agent that improves insulin sensitivity and reduces hepatic glucose production, with preclinical and clinical evidence suggesting a neutral to potentially beneficial effect on bone remodeling and fracture risk reduction."
      brand_name [:Glucophage, :Glumetza, :Fortamet, :Riomet]
      category :biguanide
      status :first_line_standard_of_care
      typical_dosage "500 mg to 2000 mg daily, typically initiated at 500 mg once or twice daily with meals and titrated gradually to minimize gastrointestinal side effects"
      contraindicated_by [:low_eGFR, :acute_metabolic_acidosis, :chronic_metabolic_acidosis,  :hepatic_disease, :tissue_hypoxia ]
      intended_effects [:promote_osteoblast_activity, :inhibit_osteoclast_activity, :mitigate_metabolic_damage]
      interventions [:denosumab, :teriparatide_pth_analog_intermittent, :glycemic_control ]	
    end
        
    
    indicated_agent :physical_therapy_supervision__rehabilitation do
      description "Specialized physical therapy consultation and supervised rehabilitation to ensure proper biomechanical form, prevent dangerous spinal flexion or twisting movements, and customize exercise loads for patients with pre-existing fractures."
      brand_name []
      category :rehabilitative_care
      status :standard_of_care
      typical_dosage "1-3 sessions per week initially for form mastery, transitioning to independent home programs with periodic clinical reassessment"
      contraindicated_by [:traumatic_spinal_instability, :patient_refusal ]
      intended_effects [:reduce_fall_risk,:correct_posture, :build_muscle_strength]
      interventions [:estrogen_therapy]
    end
    
    
    indicated_agent :progesterone do
      description "Co-administered with estrogen in non-hysterectomized women to protect the endometrium from unopposed estrogen-induced hyperplasia and endometrial carcinoma."
      brand_name [:Endometrin, :Crinone, :Milprosa]
      category :hormone_co_therapy
      status :standard_of_care
      typical_dosage "200 mg orally daily for 12 days per month (sequential) or 100 mg orally daily (continuous combined)"
      contraindicated_by [:breast_cancer, :uterine_bleeding, :liver_disease,
                :hypersensitivity_to_progesterone ]
      intended_effects [:stimulate_osteoblasts, :increase_bone_density, :prevent_bone_loss,   
                        :restore_bome_mass]
      interventions [:estrogen_therapy]
    end
	  
	  
	end
  end
end