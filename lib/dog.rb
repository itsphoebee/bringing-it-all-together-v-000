class Dog
  attr_accessor :name, :breed
  attr_reader :id

  def initialize(name:, breed:)
    @name = name
    @breed = breed
    @id = id
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs(
      id PRIMARY KEY INTEGER,
      name TEXT,
      breed TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end
end
