d = Deck.create(name: "Ruby")

file = File.open('testdeck.txt').readlines
file.delete("\n")

file.map! do |line|
  line.strip!
end

file.each_slice(2) do |cardface|
  d.cards << Card.create!(
    question: cardface[0],
    answer: cardface[1]
    )
end
