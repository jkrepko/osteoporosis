defmodule OsteoTest.Fact do
@moduledoc false

defstruct [:subject, :relation, :object, :provenance]

defp directional_relation(when_val, direction) do
case {when_val, direction} do
{:increased, :increased} -> :enhances
{:increased, :decreased} -> :inhibits
{:decreased, :increased} -> :inhibits
{:decreased, :decreased} -> :enhances
_ -> nil
end
end

defp derive_directional_facts(subject, object, :inhibits) do
[
%OsteoTest.Fact{
	subject: subject,
	relation: :inhibits,
	object: object,
	provenance: :derived
},
%OsteoTest.Fact{
	subject: object,
	relation: :inhibited_by,
	object: subject,
	provenance: :derived
}
]
end

defp derive_directional_facts(subject, object, :enhances) do
[
%OsteoTest.Fact{
	subject: subject,
	relation: :enhances,
	object: object,
	provenance: :derived
},
%OsteoTest.Fact{
	subject: object,
	relation: :enhanced_by,
	object: subject,
	provenance: :derived
}
]
end


def derive(%OsteoTest.Fact{
	subject: subject,
	relation: relation,
	object: {object, opts},
	provenance: :direct
})
when relation in [:indicates, :effects] do

when_val = Keyword.get(opts, :when)
direction = Keyword.get(opts, :direction)

case directional_relation(when_val, direction) do
nil ->
	[]

# derived_relation ->
#   [
#     %OsteoTest.Fact{
#       subject: subject,
#       relation: derived_relation,
#       object: object,
#       provenance: :derived
#     }
#   ]
derived_relation -> derive_directional_facts(subject, object, derived_relation)
end
end

def derive(_fact), do: []

end

