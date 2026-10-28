defmodule Osteoporosis.Domain.Mechanisms.MechanismsGL do
  # import Osteoporosis.DSL
  
  defmacro mechanisms_g_l do
  quote do
    
    mechanism :glucocorticoid_induced_bone_remodeling_suppression  do
       description  ""
       family "Mineral metabolism and secondary osteoporosis"
       role :pathogenic
       consumes []
       produces []
       explains []
       enhances []
       enhanced_by []
       inhibits []
       inhibited_by []
     end
    
    
    mechanism :impaired_mechanotransduction do
       description  ""
       family "Mechaniscal and structural adaptation"
       role :pathogenic
       consumes []
       produces []
       explains []
       enhances []
       enhanced_by []
       inhibits []
       inhibited_by []
     end
     
    
    mechanism :impaired_osteoblastogenesis do
      description "A functional decline of osteoblasts, the cells responsible for synthesizing new bone matrix, leading to an uncoupling of the bone remodeling cycle."
      family "Bone remodeling and cellular regulation"
      
      role :pathogenic
      consumes [
      :osteoblast_progenitor_cells,
      :amino_acids,
      :anabolic_peptides,
      :antiresorptive_peptides,
      :ascorbic_acid_vitamin_c,
      :osteoid_production,
      :energy_atp
      ]
      produces [
      :hypocellular_bone_surfaces
      ]
      explains [
      :failure_of_bone_repair_units,
      :negative_bone_balance_per_remodeling_cycle,
      :smooth_unfilled_resorption_pits
      ]
      enhances [
      :remodeling_imbalance_resorption_exceeds_formation,
      :fatty_bone_marrow_infiltration
      ]
      enhanced_by [
      :aging_cellular_senescence,
      :glucocorticoid_excess,
      :oxidative_stress,
      :sclerostin_overexpression
      ]
      inhibits [
      :bone_formation_rate,
      :osteoid_mineralization,
      :trabecular_thickness
      ]
      inhibited_by [
      :teriparatide_pth_analog_intermittent,
      :mechanical_loading_stimulation,
      :wnt_signaling_activators
      ]
    end
    
    
    mechanism :inflammatory_osteoclastogenesis do
       description  ""
       family "Aging, inflammation, metabolism"
       role :pathogenic
       consumes []
       produces []
       explains []
       enhances []
       enhanced_by []
       inhibits []
       inhibited_by []
     end
	  
  end
 end
end