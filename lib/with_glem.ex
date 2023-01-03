defmodule WithGleam do
  defmodule User do
    defstruct name: nil, age: nil
  end

  def make_user(name, age) do
    # this shows how to call gleam in elixir code
    {:user, name, age} = :with_gleam.make_user(name, age)

    %User{name: name, age: age}
  end
end
