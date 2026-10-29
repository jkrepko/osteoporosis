defmodule Osteoporosis.Domain.Conditions.ConditionsAF do
  # import Osteoporosis.DSL
  
  defmacro conditions_a_f do
  quote do
    
    condition :anorexia_nervosa do
      description "Severe eating disorder characterized by self-imposed starvation, profound weight loss, and early-onset bone mineral loss."
      mechanisms [
        :profound_estrogen_deficiency_from_hypothalamic_amenorrhea,
        :nutritional_depletion_of_calcium,
        :nutritional_depletion_of_vitamin_D,
        :nutritional_depletion_of_protein,
        :elevated_baseline_cortisol_and_low_anabolic_hormones_IGF_1
      ]
      signals [
         :extremely_low_body_mass_index_BMI,
         :primary_or_secondary_amenorrhea,
         :low_serum_IGF_1_and_leptin_levels
      ]
      interventions [
         :nutritional_rehabilitation_and_weight_restoration,
         :restoration_of_menstrual_function_transdermal_estrogen_if_needed,
         :calcium_and_vitamin_D_supplementation,
         :Cognitive_behavioral_therapy_CBT
      ]
    end
    
    
    condition :celiac_disease do
      description "Immune-mediated enteropathy triggered by dietary gluten ingestion leading to small intestinal mucosal damage and malabsorption."
      mechanisms [
        :malabsorption_of_calcium_and_fat_soluble_vitamin_D,
        :secondary_hyperparathyroidism,
        :impaired_bone_mineralization
      ]
      signals [
         :positive_anti_tTG_IgA_antibodies,
         :gastrointestinal_distress,
         :low_serum_vitamin_D_and_calcium,
         :elevated_alkaline_phosphatase
      ]
      interventions [
         :strict_lifelong_gluten_free_diet,
         :high_dose_vitamin_D_and_calcium_supplementation,
         :routine_bone_density_monitoring
      ]
    end
    
    condition :CKD_MBD do
      description "Chronic Kidney Disease-Mineral and Bone Disorder (CKD-MBD) is a systemic disorder of mineral and bone metabolism due to chronic kidney disease manifesting as biochemical and bone abnormalities."
          
      mechanisms [
        :phosphate_retention_stimulating_FGF23_and_secondary_hyperparathyroidism,
        :skeletal_resistance_to_PTH_resulting_in_altered_bone_turnover_states
      ]
      signals [
         :elevated_serum_fibroblast_growth_factor_23_FGF23,
         :hyperphosphatemia_and_abnormal_intact_PTH_levels,
         :vascular_calcifications_on_diagnostic_imaging
      ]
      interventions [
         :dietary_phosphate_restriction,
         :phosphate_binders,
         :sevelamer,
         :calcium_acetate,
         :calcimimetics__cinacalcet,
         :active_vitamin_D_analogs
      ]
    end
    
    
    
    condition :diabetes_mellitus do
      description "Chronic metabolic disorders characterized by hyperglycemia that negatively impact bone material properties and structural integrity over time."
      
      mechanisms [
        :accumulation_of_advanced_glycation_end_products_AGEs_impairing_collagen_cross_linking,
        :chronic_microvascular_disease_reducing_bone_perfusion,
        :direct_inhibitory_effects_of_high_glucose_on_osteoblast_differentiation
      ]
      signals [
         :fractures_occurring_despite_normal_or_mildly_reduced_BMD_T_scores,
         :impaired_fracture_healing_rates,
         :chronically_elevated_glycated_hemoglobin
      ]
      interventions [
         :strict_glycemic_control_using_bone_neutral_agents,
         :avoidance_of_anti_diabetic_medications_known_to_increase_fracture_risk,
         :comprehensive_fall_prevention_strategies
      ]
    end
	  
	  
  end
 end
end
  