defmodule OsteoTest.Domain.Mechanisms.MechanismsQS do
  # import OsteoTest.DSL
  
  defmacro mechanisms_q_s do
  quote do
    
    mechanism :rankl_opg_signaling_dysregulation do
       description  "Receptor activator of nuclear factor-κB ligand (RANKL) binds to RANK on osteoclast precursors, stimulating their differentiation and activation.  Osteoprotegerin (OPG) acts as a decoy receptor. An elevated RANKL/OPG ratio drives excessive bone resorption characteristic of osteoporosis."
       family :cytokine_signaling_and_bone_remodeling
       role :pathogenic
       consumes [
       :active_rankl,
       :osteoclast_precursors,
       :atp
       ]
       produces [
       :activated_osteoclasts,
       :multinucleated_resorbing_cells,
       :degraded_bone_matrix_byproducts
      ]
       explains [
       :trabecular_bone_loss,
       :cortical_porosity,
       :increased_bone_fracture_risk,
       :accelerated_bone_turnover
      ]
       enhances []
       enhanced_by []
       inhibits [
       :osteoblast_mediated_bone_mineralization,
       :opg_rankl_neutralizing_complexes
      ]
       inhibited_by [
       :denosumab,
       :recombinant_osteoprotegerin,
       :estrogen_receptor_agonism,
       :tgf_beta_signaling
       ]
     end
     
     
     mechanism :sclerostin_mediated_osteogenesis_inhibition  do
       description  "Osteocyte-secreted sclerostin binds to LRP5/6 coreceptors on osteoblasts, disrupting Wnt/beta-catenin signaling. This mechanism suppresses osteoblast proliferation and bone matrix deposition, contributing to the impaired bone formation characteristic of osteoporosis."
       family :osteocyte_mediated_paracrine_signaling
       role :pathogenic
       consumes [
         :secreted_sclerostin_sost,
         :lrp5_6_frizzled_receptor_complexes,
         :osteoblast_lineage_precursors
       ]
       produces [
         :inactive_wnt_receptor_complexes,
         :downregulated_osteogenic_gene_expression,
         :decreased_osteoid_secretion
       ]
       explains [
         :impaired_bone_repair_mechanisms,
         :reduced_bone_formation_rate,
         :structural_weakness_in_cortical_bone,
         :failure_of_bone_adaptation_to_loading
       ]
       enhances []
       enhanced_by []
       inhibits [
         :osteoblast_proliferation,
         :bone_matrix_deposition,
         :alkaline_phosphatase_activity
       ]
       inhibited_by [
         :romosozumab,
         :teriparatide_therapy,
         :mechanical_loading_stimulation
       ]
     end
	  
  end
 end
end