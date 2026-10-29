defmodule Osteoporosis.Domain.Conditions.ConditionsQZ do
  # import Osteoporosis.DSL
  
  defmacro conditions_q_z do
  quote do
    
    condition :postmenopausal_osteoporosis do
      description "Postmenopausal osteoporosis is the most common form of osteoporosis, occurring in women following the cessation of ovarian function and estrogen production"
      mechanisms [
       :estrogen_deficiency,
       :enhanced_osteoclast_formation_and_activity,
       :reduced_osteoblast_lifespan
       ]
      signals [
        :low_BMD_t_score,           # (<= -2.5),
        :asymptomatic_height_loss,
        :fragility,
        :fractures                  # (vertebral, hip, wrist)"
      ]
      interventions [
        :bisphosphonates,
        :Hormone_replacement_therapy,  # HRT
        :calcium_and_vitamin_D_supplementation,
        :denosumab
      ]
    end
    
    
    condition :primary_biliary_cholangitis do
      description "Primary biliary cholangitis (PBC) is a chronic progressive autoimmune liver disease characterized by destruction of small intrahepatic bile ducts leading to cholestatic metabolic bone disease."
      
      mechanisms [
       :impaired_bile_flow_leading_to_severe_malabsorption_of_fat_soluble_vitamins_D_and_K,
       :direct_inhibitory_effects_of_chronic_cholestasis_and_cytokines_on_osteoblasts
       ]
       
      signals [
        :positive_anti_mitochondrial_antibodies_AMA,
        :elevated_serum_alkaline_phosphatase_and_gamma_glutamyl_transferase_GGT,
        :pruritus,
        :fatigue_and_low_BMD_on_screening          
      ]
      interventions [
        :ursodeoxycholic_acid_UDCA_therapy,
        :high_dose_fat_soluble_vitamin_supplementation,
        :bisphosphonate_therapy,
        :evaluation_for_liver_transplantation_in_advanced_disease
      ]
    end
    
    condition :rheumatoid_arthritis do
      description "Rheumatoid arthritiss is Chronic systemic inflammatory autoimmune disease attacking synovial joints and inducing systemic bone loss."
      
      mechanisms [
         :upregulation_of_pro_inflammatory_cytokines,
         :activation_of_the_RANKL_pathway_promoting_osteoclastogenesis
       ]
      signals [
        :elevated_inflammatory_markers,            #    (ESR,_CRP),
        :joint_swelling_and_pain,
        :generalized_reduction_in_bone_density
      ]
      interventions [
        :DMARDs_and_biologic_agents,
        :concurrent_bisphosphonate_therapy,
        :physical_therapy
      ]
    end
	  
	  
  end
 end
end