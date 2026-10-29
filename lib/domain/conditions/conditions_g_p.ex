defmodule Osteoporosis.Domain.Conditions.ConditionsGP do
  # import Osteoporosis.DSL
  
  defmacro conditions_g_p do
  quote do
	  
    condition :glucocorticoid_induced_osteoporosis do
      description "Glucocorticoid-Induced Osteoporosis (GIOP) is scondary osteoporosis caused by systemic administration of exogenous glucocorticoids for inflammatory or autoimmune conditions."
      
      mechanisms [
       :inhibition_of_osteoblast_differentiation,
       :promotion_of_osteocyte_apoptosis,
       :increased_urinary_calcium_excretion,
       :secondary_inhibition_of_intestinal_calcium_absorption
       ]
       
      signals [
        :rapid_bone_loss_shortly_after_therapy_initiation,
        :fragility_fractures_at_higher_BMD_thresholds,
        :back_pain_from_vertebral_compression
      ]
      
      interventions [
        :dose_minimization_or_discontinuation,
        :bisphosphonates,
        :teriparatide,
        :calcium_and_vitamin_D_supplementation
      ]
    end
    
    condition :hyperparathyroidism do
      description "Condition characterized by excessive secretion of parathyroid hormone (PTH) leading to abnormal calcium and phosphorus metabolism."
      
      mechanisms [
       :cortical_bone_loss,
       :high_PTH_levels_stimulating_bone_resorption
       ]
       
      signals [
        :hypercalcemia,
        :hypophosphatemia,
        :elevated_serum_intact_PTH,
        :subperiosteal_bone_resorption_on_radiographs
      ]
      
      interventions [
        :surgical_parathyroidectomy,
        :vitamin_D_repletion,
        :cinacalcet,
        :anti_resorptive_agents
      ]
    end
    
    condition :hyperthyroidism do
      description "Condition of excessive thyroid hormone production that accelerates overall systemic metabolic and bone turnover rates."
      
      mechanisms [
       :excess_triiodothyronine_T3_directly_stimulates_osteoclast_activity,
       :shortening_of_the_bone_remodeling_cycle_where_resorption_outpaces_formation
       ]
       
      signals [
        :suppressed_serum_TSH_with_elevated_free_T3_and_T4,
        :unexplained_weight_loss_and_tachycardia,
        :hypercalciuria,
        :mild_hypercalcemia
      ]
      
      interventions [
        :anti_thyroid_medications,
        :methimazole,
        :radioactive_iodine_ablation,
        :surgical_thyroidectomy,
        :calcium_and_vitamin_D_supplementation
      ]
    end
	  
  end
 end
end