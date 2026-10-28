defmodule Osteoporosis.Domain.Interventions.InterventionsGL do
  # import Osteoporosis.DSL
  
  defmacro interventions_g_l do
  quote do
	  
    intervention :glycemic_control do
       description "Glycemic control is an increasingly recognized and vital metabolic intervention in the comprehensive management of patients with osteoporosis, particularly those with concurrent type 2 diabetes mellitus. Chronic hyperglycemia impairs bone quality and strength through the accumulation of advanced glycation end-products (AGEs) in the organic bone matrix, increases oxidative stress, alters osteoblast differentiation, and negatively impacts bone material properties independent of changes in bone mineral density (BMD)"
     
       effects [
         accumulation_of_AGEs:  [when: :increased, direction: :decreased],
         oxidative_stress:      [when: :increased, direction: :decreased],
         bone_mineral_density:      [when: :increased, direction: :increased]
       ]
     
       indicated_agents [
         :metformin,
         :SGLT2_inhibitors,
         :GLP_1_receptor_agonists,
         :calcium_and_vitamin_D_supplementation
       ]
     end
     
  intervention :gsk3_beta_inhibitors do
      description "GSK3_beta_inhibitors are small molecule therapeutic agents that inhibit glycogen synthase kinase-3 beta (GSK-3beta), thereby stabilizing beta-catenin and upregulating Wnt signaling pathway activity to stimulate osteoblastic bone formation and mitigate bone mineral density decline."
    
      effects [
        GSK_3beta: [when: :increased, direction: :decreased],
        Wnt_signaling_pathway_activity: [when: :increased, direction: :increased],
        osteoblast_activity: [when: :increased, direction: :increased],
        bone_mineral_density: [when: :increased, direction: :increased]
      ]
    
      indicated_agents [
        :tideglusib,
        :SB_216763
      ]
   end
   
   
   
   intervention :hormone_replacement_therapy do
       description "Hormone replacement therapy (HRT) is a systemic endocrine intervention utilizing estrogen alone (for women without a uterus) or combined with a progestogen (for women with an intact uterus) to suppress bone turnover, prevent bone mineral density loss, and alleviate menopausal symptoms."
     
       effects [
         osteoclast_activity: [when: :increased, direction: :decreased],
         osteoblast_activity: [when: :increased, direction: :increased],
         menopausal_symptoms: [when: :increased, direction: :decreased],
         bone_mineral_density: [when: :increased, direction: :increased]
       ]
     
       indicated_agents [
         :"17-Beta Estradiol",
         :conjugated_equine_etrogens,
         :conjugated_equine_etrogens_with_medroxyprogesterone_acetate
       ]
    end
	  
  end
 end
end