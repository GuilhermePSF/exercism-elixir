defmodule NameBadge do
  def print(id, name, department) do
    # String.upcase(department)
    "#{if id != nil, do: "[" <> "#{id}" <> "] - ", else: ""}" <>
      name <>
      " - " <>
      "#{if department != nil, do: String.upcase(department) , else: "OWNER"}"
  end
end
