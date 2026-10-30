defmodule Osteoporosis.Domain.Mechanisms.MechanismsMP do
  # import Osteoporosis.DSL
  
  defmacro mechanisms_m_p do
  quote do
    
    
    mechanism :mesenchymal_stem_cell_adipogenic_shift do
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
    
    
    mechanism :osteoblast_apoptosis do
      description "A functional decline and increased programmed cell death (apoptosis) of osteoblasts, the cells responsible for synthesizing new bone matrix, leading to an uncoupling of the bone remodeling cycle."
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
      :apoptotic_osteoblast_bodies,
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
    
    
    mechanism :osteocyte_dysfunction do
      description  "Osteocytes embedded within the lacunocanalicular network sense mechanical loading and orchestrate targeted bone remodeling. In osteoporotic states—exacerbated by aging, oxidative stress, and chronic inflammation—osteocytes undergo cellular senescence, apoptosis, or functional decoupling. This dysfunction impairs their ability to sense microdamage and transmit survival or directional signals, leading to dysregulated osteoclast recruitment and defective bone repair."
      family :cellular_stress_and_mechanosensory_transduction_pathways
      role :pathogenic
      consumes [
        :mechanical_strain_signals,
        :oxygen_radicals_oxidative_stress,
        :gap_junction_communication_channels,
        :osteocyte_networks
      ]
      produces [
        :elevated_apoptotic_signals_caspases,
        :rankl_hotspots_at_remodeling_sites,
        :senescence_associated_secretory_phenotype
      ]
      explains [
        :accumulation_of_microcracks_in_aged_bone,
        :uncoupled_bone_remodeling_units,
        :focal_bone_matrix_deterioration,
        :age_related_skeletal_fragility
      ]
      enhances []
      enhanced_by []
      inhibits [
        :mechanically_induced_bone_formation,
        :gap_junction_intercellular_communication,
        :osteoblast_recruitment_to_remodeling_sites
      ]
      inhibited_by [
        :antioxidant_dietary_therapy,
        :senolytics_dasatinib_quercetin,
        :regular_weight_bearing_exercise,
        :parathyroid_hormone_pth_anabolic_regimens
      ]
    end
    
    
    mechanism :oxidative_stress_mediated_bone_damage do
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
     
    
    
    mechanism :pth_signaling_dysregulation do
       description  ""
       family "Molecualr_signaling"
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