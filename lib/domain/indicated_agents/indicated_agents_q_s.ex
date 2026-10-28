defmodule Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsQS do
  # import Osteoporosis.DSL
  
  defmacro indicated_agents_q_s do
  quote do
	  
    indicated_agent :raloxifene_hydrochloride do
      description "A second-generation selective estrogen receptor modulator (SERM) that acts as an estrogen agonist in bone and lipid metabolism, reducing bone resorption and lowering total and LDL cholesterol, while acting as an antagonist in uterine and breast tissues.  A benzothiophene-derived SERM that selectively binds to estrogen receptors, providing estrogen-like bone-sparing effects to prevent vertebral fractures and postmenopausal bone loss without stimulating endometrial tissue."
      brand_name [:Evista, :Optruma]
      category [:serm, :selective_estrogen_receptor_modulator]
      status :standard_of_care
      typical_dosage "60 milligrams (mg) taken orally once daily, with or without food, accompanied by adequate calcium and vitamin D supplementation."
      contraindicated_by [:venous_thromboembolism, :pregnancy, :lactation, :severe_hepatic_impairment, :cholestasis,
                :uterine_bleeding, :severe_hepatic_impairment, :prolonged_immobilization ]
      intended_effects []
      interventions [:estrogen_therapy, :estrogen_receptor_agonism, :raloxifene, :selective_estrogen_receptor_modulators ]
    end
      
    
    indicated_agent :recombinant_human_osteoprotegerin do
      description "Recombinant human_ steoprotegerin is a genetically engineered fusion protein combining the ligand-binding domain of human osteoprotegerin with the Fc portion of human IgG1, designed to extend circulatory half-life and potently neutralize RANKL to inhibit bone resorption."
      brand_name []
      category :rdecoy_receptor_biologic
      status :standard_of_care
      typical_dosage "Parenteral administration (subcutaneous injection) ranging from 0.1 mg/kg to 3.0 mg/kg administered at multi-week intervals in clinical trial settings."
      contraindicated_by [:uncorrected_hypocalcemia, :severe_infection, :sepsis, :development_of_neutralizing_anti_OPG_antibodies,
                :hypersensitivity_to_human_immunoglobulin_Fc_fusion_proteins ]
      intended_effects []
      interventions [:recombinant_osteoprotegerin]
    end
    
    indicated_agent :resveratrol do
      description "A natural polyphenol and potent sirtuin activator (SIRT1) with strong antioxidant and anti-inflammatory properties that inhibit osteoclastogenesis, reduce bone oxidative stress, and stimulate osteoblastic bone formation."
      brand_name []
      category :polyphenolic_antioxidant
      status :standard_of_care
      typical_dosage "150 mg to 500 mg orally once daily with food"
      contraindicated_by [:active_bleeding_disprders, :hormone_sensitive_malignancies, :hypersensitivity_to_resveratrol ]
      intended_effects []
      interventions [:reduction_of_oxidative_stressors]
    end
    
    indicated_agent :rh_TGF_beta1 do
      description "A purified recombinant growth factor that stimulates osteoblast precursor recruitment, chemotaxis, and early matrix production to promote bone coupling and mineralization in osteoporotic bone defects."
      brand_name []
      category :growth_factor_biologic
      status :standard_of_care
      typical_dosage "Targeted local or systemic administration ranging from 0.05 mg/kg to 1.0 mg/kg via specialized delivery protocols under clinical evaluation."
      contraindicated_by [:active_local_or_systemic_neoplasia, :pregnancy, :lactation, :severe_inflammation_at_the_administration_site,
                :hypersensitivity_to_recombinant_human_growth_factors]
      intended_effects []
      interventions [:tgf_beta_signaling]
    end
    
    
    indicated_agent :risedronate do
      description "A pyridinyl bisphosphonate that binds to bone surfaces, inhibiting osteoclast-mediated bone resorption to reduce vertebral and non-vertebral fractures."
      brand_name [:Actonel, :Atelvia]
      category :oral_bisphosphonate
      status :standard_of_care
      typical_dosage "35 mg orally once weekly or 150 mg orally once a month"
      contraindicated_by [:severe_renal_impairment, :inability_to_stay_upright_for_30_min, 
                :hypocalcemia, :hypersensitivity_to_risedronate]
      intended_effects []
      interventions [:bisphosphonate_therapy]
    end
      
    
    
    indicated_agent :romosozumab do
      description "Romozozumab is a humanized monoclonal antibody that targets and inhibits sclerostin, promoting marked osteoblastic bone formation alongside a temporary reduction in bone resorption, uniquely suited for patients with severe osteoporosis and high fracture risk."
      brand_name [:Evenity]
      category [:monoclonal_antibody_anabolic, :sclerostin_inhibitor]
      status :standard_of_care
      typical_dosage "210 mg total dose administered subcutaneously once monthly (given as two 105 mg injections in the abdomen, thigh, or upper arm) for a maximum duration of 12 monthly doses, followed by an antiresorptive therapy."
      contraindicated_by [:myocardial_infarction, :hypocalcemia, :hypersensitivity_to_romosozumab_aqqg]
      intended_effects []
      interventions [:reduction_of_oxidative_stressors, :romosozumab, :wnt_signaling_activators]
    end
      
      
    indicated_agent :SB_216763 do
      description "SB_216763 is a phighly selective, ATP-competitive small molecule inhibitor of GSK-3alpha and GSK-3beta known to stimulate alkaline phosphatase activity and mineralization in osteoblastic cell cultures, supporting bone accrual."
      brand_name []
      category :atp_competitive_inhibitor
      status :standard_of_care
      typical_dosage "Investigational oral dosing ranging from 10 mg/kg to 30 mg/kg daily, adjusted according to metabolic response."
      contraindicated_by [:history_of_severe_drug_induced_liver_injury, 
                :use_of_strong_inducers_or_inhibitors_of_CYP450_enzymes_metabolizing_the_compound,
                :active_malignancies, :active_proliferative_bone_disorders ]
      intended_effects []
      interventions [:gsk3_beta_inhibitors]
    end
      
      
    indicated_agent :SGLT2_inhibitors do
      description "Oral antidiabetic agents that inhibit sodium-glucose cotransporter 2 in the proximal renal tubules, reducing blood glucose through glycosuria; clinical considerations are warranted regarding potential effects on volume status and bone mineral metabolism."
      brand_name [:Empagliflozin, :Dapagliflozin]
      category :sglt2_inhibitor
      status :first_line_standard_of_care
      typical_dosage "10 mg orally once daily (empagliflozin) or 10 mg orally once daily (dapagliflozin), taken in the morning with or without food"
      contraindicated_by [:low_eGFR, :severe_renal_impairment, :end_stage_renal_disease,  
                 :hypersensitivity_to_the_specific_SGLT2_inhibitor]
      intended_effects []
      interventions [:glycemic_control]	
    end
      
      
    indicated_agent :strontium_ranelate do
      description "The primary dual-action oral agent composed of two atoms of stable strontium bound to an organic ranelate moiety. It uniquely promotes osteoblastic bone matrix deposition while suppressing osteoclastic resorption, improving overall bone strength and microarchitecture."
      brand_name [:Protelos, :Protos, :Osseor]
      category :dual_action_modulator
      status :first_line_standard_of_care
      typical_dosage " g once daily taken orally as a suspension in a glass of water, ideally taken at bedtime separated from food and dairy products to ensure optimal absorption."
      contraindicated_by [:cardiovascular_disease,  :venous_thromboembolic_events, :severe_renal_failure,
                :uncontrolled_hypertension]
      intended_effects []
      interventions [:glycemic_control]	
    end
	  
	end
  end
end