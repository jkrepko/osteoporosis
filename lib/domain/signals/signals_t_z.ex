defmodule Osteoporosis.Domain.Signals.SignalsTZ do
  import Osteoporosis.DSL

  defmacro signals_t_z do
	quote do
		
		
		signal :trabecular_microarchitecture_deterioration do
			description "The progressive structural breakdown and disconnection of the spongy trabecular bone network inside bones, where horizontal struts are completely resorbed and vertical struts thin out."
			
			signal_type :process_state
			
			indicates [
			  disconnected_trabecular_network:                         [ when: :increased, direction: :increased ],
			  increased_bone_marrow_cavity_space:                      [ when: :increased, direction: :increased ],
			  disproportionate_loss_of_strength_relative_to_mass_loss: [ when: :increased, direction: :increased ],
			  susceptibility_to_vertebral_compression_fractures:       [ when: :increased, direction: :increased ],
			  loss_of_anisotropy_in_bone_strength:                     [ when: :increased, direction: :increased ],
			  internal_stress_concentration_on_remaining_struts:       [ when: :increased, direction: :increased ],
			  collapse_of_vertebral_bodies:                            [ when: :increased, direction: :increased ]
			]
		
		  end
		  
		  
		  signal :trabecular_perforations do
			  description "Trabecular perforations are microscopic breaks or holes that occur when osteoclasts resorb deep pits into the spongy, lattice-like trabecular bone, eventually cutting completely through thin struts.  This process transforms supportive flat plates into fragile, disconnected rods, leading to a permanent loss of structural connectivity and a significant drop in bone stiffness."
			  
			  signal_type :process_state
			  
			  indicates [
				  bone_strength:                                           [ when: :increased, direction: :increased ],
				  fragility:                                               [ when: :increased, direction: :increased ],
				  fracture_risk:                                           [ when: :increased, direction: :increased ]
			  ]
		  
			end
	
	      
		  signal :transcriptional_coregulators do
			description "Transcriptional coregulators are proteins that modulate the activity of transcription factors without directly binding to DNA, primarily through post-translational modifications like phosphorylation, acetylation, ubiquitination, and methylation. They indicate the epigenetic and post-transcriptional regulation of bone homeostasis, acting as critical switches that determine the differentiation and function of bone cells."
			
			signal_type :molecule
			
			indicates [
				osteoclast_activity:                                     [ when: :increased, direction: :increased ],
				bone_loss:                                               [ when: :increased, direction: :increased ]
			]
		  
		  end
			
		  
		  signal :ubiquitinated_beta_catenin_degradation_complexes do
			description "ubiquitinated β-catenin is the result of β-catenin degradation complexes (comprising Axin, APC, CK1, and GSK-3
			β) actively targeting the protein for proteasomal degradation.  This process is part of the inactive 'off' signal of the canonical Wnt signaling pathway, indicating a state where Wnt ligands are absent or their receptors are blocked. "
			
			signal_type :process_state
			
			indicates [
				osteoblast_differentiation:       [ when: :increased, direction: :decreased ],
				bone_formation:                   [ when: :increased, direction: :decreased ],
				OPG_expression:                   [ when: :increased, direction: :decreased ],
				osteoclast_creation:              [ when: :increased, direction: :increased ],
				bone_resorption:                  [ when: :increased, direction: :increased ],
				bone_mass:                        [ when: :increased, direction: :decreased ]
			]
		  
		  end
		
		
	  end
    end
	
end