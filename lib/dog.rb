class Dog
  attr_accessor :name, :breed
  attr_reader :id

  def initialize(name:, breed:)
    @name = name
    @breed = breed
    @id = nil
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs(
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    DB[:conn].execute("DROP TABLE dogs")
  end

  def save
  end
  def self.create(hash)
    new_dog = Dog.new(name:, breed:)
  end

end
