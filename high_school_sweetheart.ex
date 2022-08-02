defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim() |> String.first()
  end

  def initial(name) do
    name |> first_letter() |> String.upcase() |> add_dot()
  end

  def add_dot(name) do
    name <> "."
  end

  def initials(full_name) do
    [initial_one, initial_two] = full_name |> String.split() |> Enum.map(&initial/1)
    initial_one <> " " <> initial_two
  end

  def pair(full_name1, full_name2) do
    pair = "#{initials(full_name1)}  +  #{initials(full_name2)}"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{pair}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
