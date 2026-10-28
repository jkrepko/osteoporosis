defmodule Osteoporosis.Domain.Interventions.InterventionsQS do
  # import Osteoporosis.DSL
  
  defmacro interventions_q_s do
  quote do
	  
	  intervention :raloxifene do
          description "Raloxifene** is a selective estrogen receptor modulator (SERM) designed to mimic the beneficial estrogenic effects on bone mineral density and bone turnover while acting as an antagonist in uterine and breast tissues. By binding to estrogen receptors, raloxifene exerts an anti-resorptive effect on the skeleton, reducing bone resorption and slowing bone loss, which significantly lowers the risk of vertebral fractures in postmenopausal women with osteoporosis. "
        
          effects [
            cancer_risk: [when: :increased, direction: :decreased],
            bone_resorption: [when: :increased, direction: :decreased],
            bone_mineral_density: [when: :increased, direction: :increased]
          ]
        
          indicated_agents [
             :raloxifene_hydrochloride
          ]
       end
       
       
       
      intervention :recombinant_osteoprotegerin do
          description "Recombinant osteoprotegerin is a  biological antiresorptive intervention utilizing recombinant forms of the decoy receptor osteoprotegerin to bind and neutralize RANKL, thereby suppressing osteoclastogenesis, reducing bone resorption, and preserving bone mineral density in postmenopausal or secondary osteoporosis."
        
          effects [
            RANKL_activity: [when: :increased, direction: :decreased],
            osteoclast_activity: [when: :increased, direction: :decreased],
            bone_resorption: [when: :increased, direction: :decreased],
            bone_mineral_density: [when: :increased, direction: :decreased]
          ]
        
          indicated_agents [
             :recombinant_human_osteoprotegerin
          ]
       end
     
     
     intervention :reduction_of_oxidative_stressors do
        description "The reduction of oxidative stressors is an emerging and vital therapeutic paradigm in the management of osteoporosis. Oxidative stress—characterized by an imbalance between the production of reactive oxygen species (ROS) and antioxidant defense mechanisms—plays a pivotal role in the pathogenesis of bone loss."
      
        effects [
          oxidative_stress: [when: :increased, direction: :increased],
          reactive_oxygen_species: [when: :increased, direction: :decreased],
          bone_architecture: [when: :increased, direction: :increased],
          fracture_risk: [when: :increased, direction: :decreased]
        ]
      
        indicated_agents [
           :vitamin_C,
           :vitamin_E,
           :resveratrol
        ]
     end
     
     intervention :regular_weight_bearing_exercise do
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
     
     
     intervention :romosozumab do
         description "Romosozumab is an advanced bone-forming (anabolic) therapeutic intervention utilizing a humanized monoclonal antibody against sclerostin to stimulate new bone formation and simultaneously decrease bone resorption, providing rapid gains in bone mineral density and fracture risk reduction."
       
         effects [
           osteoblast_activity: [when: :increased, direction: :increased],
           osteoclast_activity: [when: :increased, direction: :decreased],
           bone_mineral_density: [when: :increased, direction: :increased],
           fracture_risk: [when: :increased, direction: :decreased]
         ]
       
         indicated_agents [
            :romosozumab,
         ]
      end
      
      
      intervention :selective_estrogen_receptor_modulators do
         description "Selective Estrogen Receptor Modulators (SERMs) are a pharmacological class of compounds that exert estrogenic agonist effects on bone tissue to inhibit bone resorption and increase bone mineral density, while exhibiting antagonist properties in breast and uterine tissues, utilized primarily for the prevention and treatment of postmenopausal osteoporosis."
       
         effects [
           osteoclast_activity: [when: :increased, direction: :decreased],
           osteoclastic_resorption: [when: :increased, direction: :decreased],
           bone_density: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
            :raloxifene_hydrochloride,
            :bazedoxifene_conjugated_estrogens
         ]
      end
      
      
      
      intervention :senolytics_dasatinib_quercetin do
         description   "Senolytics (Dasatinib + Quercetin) is a combination senolytic therapy utilizing the tyrosine kinase inhibitor dasatinib and the natural flavonoid quercetin to selectively clear senescent cells from bone and bone marrow tissues. By eliminating senescent cells and reducing the senescence-associated secretory phenotype (SASP), this intervention mitigates local inflammation, preserves osteoblast function, and ameliorates age-related trabecular bone loss."
       
         effects [
           senescent_cells:                           [when: :increased, direction: :decreased],
           senescence_associated_secretory_phenotype: [when: :increased, direction: :decreased],
           osteoblast_activity:                       [when: :increased, direction: :increased],
           trabecular_bone_loss:                      [when: :increased, direction: :decreased],
           local_inflammation:                        [when: :increased, direction: :decreased]
         ]
       
         indicated_agents [
            :dasatinib_quercetin_combination_regimen,
            :fisetin_augmented_senolytic_protocol 
         ]
      end
      
     
     
     intervention :strontium_ranelate_modulation do
         description "A dual-action therapeutic intervention that re-couples bone remodeling by stimulating osteoblast-mediated bone formation and inhibiting osteoclast-mediated bone resorption, leading to improved bone mineral density and enhanced structural strength."
       
         effects [
           osteoblast_activity: [when: :increased, direction: :increased],
           osteoclast_activity: [when: :increased, direction: :decreased],
           osteoclastic_resorption: [when: :increased, direction: :decreased],
           bone_strength: [when: :increased, direction: :increased],
           bone_architecture: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
            :strontium_ranelate
         ]
      end
      
  end
 end
end