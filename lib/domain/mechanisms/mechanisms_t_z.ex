defmodule Osteoporosis.Domain.Mechanisms.MechanismsTZ do
  # import Osteoporosis.DSL
  
  defmacro mechanisms_t_z do
  quote do
    
    mechanism :wnt_beta_catenin_signaling_suppression  do
      description  "Canonical Wnt/beta-catenin signaling promotes bone formation via osteoblast activation. Upregulated antagonists like sclerostin (SOST) and Dkk-1 block LRP5/6 receptors, suppressing beta-catenin accumulation and blunting osteoblast-mediated bone synthesis in osteoporosis."
      family :growth_factor_and_transcriptional_regulatory_pathways
      role :pathogenic
      consumes [
      :canonical_wnt_ligands,
      :cytosolic_beta_catenin,
      :lrp5_6_receptors,
      :osteoid_production,
      :atp
      ]
      produces [
      :suppressed_osteogenic_transcription,
      :ubiquitinated_beta_catenin_degradation_complexes,
      ]
      explains [
      :impaired_bone_formation_capacity,
      :diminished_osteoblastogenesis,
      :age_related_trabecular_mass_reduction,
      :blunted_anabolic_response_to_loading
      ]
      enhances []
      enhanced_by []
      inhibits [
      :osteoblast_differentiation,
      :bone_matrix_mineralization,
      :runx2_dependent_gene_transcription
      ]
      inhibited_by [
      :romosozumab,
      :dkk1_neutralizing_antibodies,
      :gsk3_beta_inhibitors,
      :mechanical_loading_stimulation
      ]
    end
	  
  end
 end
end