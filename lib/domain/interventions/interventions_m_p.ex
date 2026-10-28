defmodule Osteoporosis.Domain.Interventions.InterventionsMP do
  # import Osteoporosis.DSL
  
  defmacro interventions_m_p do
  quote do
	  
    intervention :mechanical_loading_stimulation do
        description "Mechanical loading and targeted exercise therapy represent fundamental non-pharmacological interventions for the prevention and management of osteoporosis. "
      
        effects [
          osteoblast_activity: [when: :increased, direction: :increased],
          bone_mineral_density: [when: :increased, direction: :increased]
        ]
      
        indicated_agents [
          :alendronate,
          :calcium_and_vitamin_D_supplementation,
          :transdermal_estradiol_patch,
          :physical_therapy_supervision__rehabilitation
        ]
     end
     
     
     intervention :multinucleated_resorbing_cells do
         description "A primary antiresorptive therapeutic strategy focused on suppressing the activity, differentiation, and survival of multinucleated osteoclasts to halt excessive bone turnover, prevent trabecular and cortical bone loss, and reduce fracture risk in osteoporotic patients."
       
         effects [
           osteoclast_activity: [when: :increased, direction: :decreased ],
           bone_loss:   [when: :increased, direction: :decreased ],
           trabecular_bone_loss:   [when: :increased, direction: :decreased ],
           cortical_bone_loss:   [when: :increased, direction: :decreased ],
           fracture_risk:   [when: :increased, direction: :decreased ]
         ]
       
         indicated_agents [
           :alendronate,
           :denosumab,
           :zoledronic_acid
         ]
      end
      
      
      intervention :parathyroid_hormone_pth_anabolic_regimens do
          description "Anabolic pharmacological regimens utilizing intermittent administration of parathyroid hormone or related peptides to stimulate osteoblastic bone formation, significantly improving bone mineral density, microarchitecture, and overall skeletal strength in patients with severe osteoporosis."
        
          effects [
            osteoblast_activity: [when: :increased, direction: :increased],
            bone_architecture: [when: :increased, direction: :increased],
            bone_strength: [when: :increased, direction: :increased],
            bone_mineral_density: [when: :increased, direction: :increased]
          ]
        
          indicated_agents [
             :teriparatide,
             :abaloparatide
          ]
       end
	  
  end
 end
end