defmodule Osteoporosis.Domain.Signals.SignalsMP do
  import Osteoporosis.DSL

  defmacro signals_m_p do
	quote do
		
		
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
		  
		  
		  signal :periosteal_expansion do
			description "Periosteal expansion is the compensatory widening of the bone's outer diameter via new bone formation on the outer surface.  Its significance lies in biomechanical adaptation: because a hollow tube resists bending better than a solid rod of the same weight, this expansion partially offsets the loss of structural strength caused by the thinning of the inner bone."
			
			signal_type :process_state
		  
			indicates [
			  bone_diameter: [ when: :increased, direction: :increased ],
			  bone_strength: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		  
		  signal :phosphate_ions do
			description "In osteoporosis, phosphate is critical because 85% of the body's phosphorus is stored in bones and teeth, where it combines with calcium to form hydroxyapatite, the crystalline compound providing structural strength.  In osteoporosis management and diagnosis, serum phosphate levels help differentiate primary from secondary causes of bone loss."
			
			signal_type :molecule
		  
			indicates [
			  chronic_kidney_disease: [ when: :decreased, direction: :increased ],
			  bone_fragility: [ when: :decreased, direction: :increased],
			  phosphate_toxicity: [ when: :increased, direction: :increased]
			  ]
		  end
		
		
	  end
   end
end