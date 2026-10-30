defmodule Osteoporosis.Domain.Signals.SignalsMP do
  import Osteoporosis.DSL

  defmacro signals_m_p do
	quote do
		
		
		
		signal :mature_osteoblast_secretory_products do
			description "Mature osteoblasts exhibit an altered senescence-associated secretory phenotype (SASP) characterized by increased IL-6, reduced IL-8 and angiogenin, and decreased expression of extracellular matrix proteins such as osteopontin, osteonectin, progranulin, and thrombospondin-1. These secretory products act as paracrine signals that significantly enhance endothelial cell migration and proliferation, indicating a dysregulated interaction between bone-forming cells and the vascular system."
			
			signal_type :molecule
		  
			indicates [
			  angiogenesis:  [ when: :increased, direction: :decreased ],
			  inflammation:  [ when: :increased, direction: :increased ]
			  ]
		  end
		
		signal :mechanical_strain_signals do
			description "Mechanical strain signals in osteoporosis refer to physical deformations (strains) experienced by bone tissue during activity, which serve as the primary anabolic regulatory cues for skeletal health.  These signals are characterized by their magnitude (intensity of deformation) and frequency (rate of application), with research indicating that even extremely low-magnitude strains (three orders of magnitude below those causing damage) can be osteogenic if applied at high frequencies (e.g., 15–90 Hz)."
			
			signal_type :tissue
		  
			indicates [
			  bone_strength: [ when: :increased, direction: :decreased ],
			  sclerostin:    [ when: :increased, direction: :decreased ],
			  RANKL:         [ when: :increased, direction: :decreased ],
			  Wnt_β_catenin: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		
		signal :microcracks_in_matrix do
			description "In osteoporosis, microcracks in the matrix are linear fractures approximately 50 to 100 microns long that result from fatigue damage and represent a critical component of reduced bone quality and increased skeletal fragility.  These microcracks indicate an imbalance between damage creation and repair, where the accumulation of microdamage reduces the bone’s elastic modulus and toughness, predisposing the tissue to fragility fractures. "
			
			signal_type :tissue
		  
			indicates [
			  bone_strength: [ when: :increased, direction: :increased ],
			  remodeling_risk: [ when: :increased, direction: :increased ],
			  fracture_risk: [ when: :increased, direction: :increased ]
			  ]
		  end
		  
		  
		  signal :mature_enzymatic_collagen_cross_links do
			description "Mature enzymatic collagen cross-links are stable, trivalent covalent bonds (such as pyridinoline and pyrrole) that form via the enzyme lysyl oxidase.  They result from the maturation of initial immature divalent cross-links, creating a rigid, interconnected network between collagen molecules that provides structural integrity and stiffness to the bone matrix."
			
			signal_type :tissue
		  
			indicates [
			  bone_strength: [ when: :increased, direction: :increased ],
			  collagen_maturation: [ when: :decreased, direction: :decreased],
			  lysyl_oxidase_activity: [ when: :decreased, direction: :decreased ]
			  ]
		  end
		  
		
		  signal :microscopic_trabecular_perforations do
			description "Microscopic trabecular perforations are defined as complete breakages in bone trabeculae caused by osteoclasts resorbing a cavity so deep that it cannot be refilled by osteoblasts.  This process results in the permanent loss of structural connectivity, transforming supporting bone plates into fragile, disconnected rods and creating localized stress concentrations."
			
			signal_type :process_state
		  
			indicates [
			  bone_fragility: [ when: :increased, direction: :increased ],
			  mechanical_weakness: [ when: :increased, direction: :decreased],
			  fracture_risk: [ when: :increased, direction: :increased] 
			  ]
		  end
		  
		  signal :mineralized_bone_matrix do
			description "In osteoporosis, the mineralized bone matrix undergoes microarchitectural deterioration and reduced bone mineral density (BMD).  This leads to a porous, fragile structure where bone resorption by osteoclasts outpaces bone formation by osteoblasts."
			
			signal_type :process_state
		  
			indicates [
			  fracture_risk: [ when: :decreased, direction: :increased ],
			  remodeling_imbalance: [ when: :decreased, direction: :increased],
			  bone_stiffness: [ when: :increased, direction: :increased] ,
			  bone_brittleness: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		  signal :osteoblast_progenitor_cells do
			description "Osteoprogenitor cells, also known as osteogenic cells or preosteoblasts, are committed mesenchymal stem cells that serve as the primary source for new bone formation by differentiating into osteoblasts. The  significance of these cells lies in their dysfunction or reduced activity, which contributes to decreased bone formation and increased fragility."
			
			signal_type :cells
		  
			indicates [
			  bone_formation: [ when: :decreased, direction: :decreased ],
			  bone_fragility: [ when: :decreased, direction: :increased],
			  tyrosine_kinase_2: [ when: :decreased, direction: :increased]
			  ]
		  end
		  
		  
		  signal :osteoid_production do
			description "Reduced osteoid production signifies a failure in the bone formation phase of remodeling, where osteoblasts (bone-forming cells) do not synthesize enough unmineralized organic matrix (osteoid) to replace resorbed bone."
			
			signal_type :process_state
		  
			indicates [
			  senile_osteoporosis: [ when: :decreased, direction: :increased ],
			  bone_fragility: [ when: :decreased, direction: :increased],
			  fracture_risk: [ when: :decreased, direction: :increased]
			  ]
		  end
		  
		  
		  signal :osteoprogenitor_pools do
			  description "Osteoprogenitor pools are reservoirs of undifferentiated mesenchymal stem and progenitor cells that can differentiate into osteoblasts to form new bone.  These cells are present in the bone marrow stroma, periosteum, endosteum, and as circulating osteoprogenitor (COP) cells in the peripheral blood. As a signal, these pools indicate the body's capacity for bone formation and repair. They mobilize during high-turnover states like fracture healing, pubertal growth, and postmenopausal osteoporosis. "
			  
			  signal_type :process_state
			
			  indicates [
				bone_mineral_density:  [ when: :increased, direction: :increased ],
				bone_loss:             [ when: :decreased, direction: :increased]
				]
			end
		  
		  
		  signal :periosteal_expansion do
			description "Periosteal expansion is the compensatory widening of the bone's outer diameter via new bone formation on the outer surface.  Its significance lies in biomechanical adaptation: because a hollow tube resists bending better than a solid rod of the same weight, this expansion partially offsets the loss of structural strength caused by the thinning of the inner bone."
			
			signal_type :process_state
		  
			indicates [
			  bone_diameter: [ when: :increased, direction: :increased ],
			  bone_strength: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		  
		  signal :phosphate_ions do
			description "Phosphate is critical because 85% of the body's phosphorus is stored in bones and teeth, where it combines with calcium to form hydroxyapatite, the crystalline compound providing structural strength.  In osteoporosis management and diagnosis, serum phosphate levels help differentiate primary from secondary causes of bone loss."
			
			signal_type :molecule
		  
			indicates [
			  chronic_kidney_disease: [ when: :decreased, direction: :increased ],
			  bone_fragility: [ when: :decreased, direction: :increased],
			  phosphate_toxicity: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		  
		  
		  signal :pro_inflammatory_cytokines_il1_il6_tnfa do
			  description "IL-1, IL-6, and TNF-α are pro-inflammatory cytokines that serve as key biochemical signals driving bone loss.  They are classified as osteoclastogenic signals, meaning they actively stimulate the formation, activation, and survival of osteoclasts (bone-resorbing cells) while simultaneously inhibiting osteoblasts (bone-forming cells)."
			  
			  signal_type :molecule
			
			  indicates [
				systemic_inflammation:            [ when: :increased, direction: :increased ],
				bone_loss:                        [ when: :increased, direction: :increased],
				rankl_signaling:                  [ when: :increased, direction: :increased],
				osteoclast_differentiation:       [ when: :increased, direction: :increased],
				fracture_risk:                    [ when: :increased, direction: :increased]
				]
			end
		
		
	  end
   end
end