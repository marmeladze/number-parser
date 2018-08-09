module NumberParser
  SCALES = [
    {step: :ones, mod: 10, coefficient: 1},
    {step: :tens, mod: 100, coefficient: 10},
    {step: :hundreds, mod: 1_000, coefficient: 100},
    {step: :thousands, mod: 1_000_000, coefficient: 1000},
    {step: :millions, mod: 1_000_000_000, coefficient: 1_000_000},
    {step: :billions, mod: 1_000_000_000_000, coefficient: 1_000_000_000},
    {step: :trillions, mod: 1_000_000_000_000_000, coefficient: 1_000_000_000_000},
    {step: :quadrillions, mod: 1_000_000_000_000_000_000, coefficient: 1_000_000_000_000_000},
    {step: :quintillions, mod: 1_000_000_000_000_000_000_000, coefficient: 1_000_000_000_000_000_000},
  ]

  def expanded_notation_of n
    notation = {}
    i = 0
    while n > 0 
      b = n % SCALES[i][:mod]
      n = (n - b)
      val = b/SCALES[i][:coefficient]
      notation.store(SCALES[i][:step],  val) unless val.zero?
      i+=1
    end
    notation
  end
end