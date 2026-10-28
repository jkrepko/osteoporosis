defmodule Osteoporosis.Domain.Mechanisms.MechanismsDF do
  # import Osteoporosis.DSL
  
  defmacro mechanisms_d_f do
  quote do
    
    mechanism :estrogen_receptor_signaling_deficiency  do
       description  "Systemic estrogen deficiency removes protective signaling on bone cells, upregulating RANKL, promoting pro-inflammatory cytokine release, and accelerating osteoclastogenesis while reducing osteoblast lifespan, driving postmenopausal osteoporosis."
       family :endocrine_and_nuclear_receptor_signaling_pathways
       role :pathogenic
       consumes [
         :"17_beta_estradiol",
         :nuclear_estrogen_receptors_alpha_beta,
         :transcriptional_coregulators
       ]
       produces [
         :unsuppressed_rankl_secretion,
         :pro_inflammatory_cytokines_il1_il6_tnfa,
         :accelerated_osteoclast_differentiation
       ]
       explains [
         :rapid_trabecular_bone_loss_postmenopause,
         :increased_bone_turnover_markers,
         :widened_remodeling_space,
         :accelerated_skeletal_fragility
       ]
       enhances []
       enhanced_by []
       inhibits [
         :osteoclast_apoptosis,
         :osteoprotegerin_opg_expression,
         :osteoblast_lifespan_and_collagen_synthesis
       ]
       inhibited_by [
         :hormone_replacement_therapy,
         :selective_estrogen_receptor_modulators,
         :raloxifene
       ]
     end
    
    
    
    mechanism :excessive_osteoclast_activity do
      description  "An abnormal increase in the number and activity of osteoclasts, the cells responsible for bone resorption. This leads to bone breakdown outpacing bone formation."
      family "Bone remodeling and cellular regulation"
      role :pathogenic
      consumes [
        :mineralized_bone_matrix,
        :calcium_ions_from_bone,
        :phosphate_ions,
        :energy_atp
      ]
      produces [
        :resorption_lacunae_howships_lacunae,
        :calcium_and_phosphate_into_bloodstream,
        :bone_degradation_products_ctx_ntx,
        :microscopic_trabecular_perforations
      ]
      explains [
        :rapid_loss_of_bone_mineral_density,
        :thinning_of_cortical_bone_cortex,
        :hypercalcemia_in_advanced_states
      ]
      enhances [
        :bone_resorption_rate,
        :skeletal_fragility,
        :fracture_risk
      ]
      enhanced_by [
        :estrogen_deficiency,
        :elevated_parathyroid_hormone_pth,
        :rankl_signaling_pathway,
        :pro_inflammatory_cytokines_tnf_alpha_il_6
      ]
      inhibits [
        :overall_bone_mass,
        :structural_integrity_of_trabeculae
      ]
      inhibited_by [
        :estrogen_therapy,
        :bisphosphonate_therapy,
        :denosumab,
        :calcitonin
      ]
    end
	  
  end
 end
end