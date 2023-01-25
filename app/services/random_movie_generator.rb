class RandomMovieGenerator
  def initialize(count: 1)
    @count = count
  end

  def call
    @count.times do
      movie = Faker::Book
      Movie.create(
        title: Faker::Book.title,
        year: (1912...Date.today.year).to_a.sample,
        director: Faker::Name.name
      )
    end
  end

  private

end