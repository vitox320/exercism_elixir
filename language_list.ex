defmodule LanguageList do
  @functional_languages [
    "Elixir",
    "Erlang",
    "Common Lisp",
    "Haskell",
    "F#",
    "Clojure",
    "Elm",
    "Racket",
    "OCaml",
    "Idris",
    "PureScript",
    "Wolfram",
    "Scala"
  ]

  def new do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def first(list) do
    list |> List.first()
  end

  def remove(list) do
    list |> List.delete(list |> first())
  end

  def count(list) do
    list |> length()
  end

  def functional_list?(list) do
    List.last(list) in @functional_languages
  end
end
