defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @earth_constant 31557600

  @relative_times %{mercury: 0.2408467 * @earth_constant,
                    venus: 0.61519726 * @earth_constant,
                    earth: @earth_constant,
                    mars: 1.8808158 * @earth_constant,
                    jupiter: 11.862615 * @earth_constant,
                    saturn: 29.447498 * @earth_constant,
                    uranus: 84.016846 * @earth_constant,
                    neptune: 164.79132 * @earth_constant
                  }

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds), do: seconds / Map.get(@relative_times, planet)
end
