ExUnit.start

Mix.Task.run "ecto.create", ~w(-r FoodPoisoning.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r FoodPoisoning.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(FoodPoisoning.Repo)

