  defmodule Osteoporosis.Domain.Role do
    @moduledoc false
    @roles [:protective, :pathogenic, :double_edged]

    def all, do: @roles
    def valid?(role), do: role in @roles
end
