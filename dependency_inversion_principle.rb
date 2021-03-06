# Bad example

class Developer < ProjectTeam
  attr_accessor :programming_language

  def initialize(programming_language)
    @programming_language = programming_language
  end

  def develop
    sprint.times do
      puts "Writing code using #{@programming_language}"
    end
  end

  def write_unit_tests
    UnitTests.new.write
  end

  def write_integration_tests
    IntegrationTests.new.write
  end

  def write_functional_tests
    FunctionalTests.new.write
  end
end

class UnitTests
  def write
    # Implementation for unit tests writing
  end
end

class IntegrationTests
  def write
    # Implementation for integration tests writing
  end
end

class FunctionalTests
  def write
    # Implementation for functional tests writing
  end
end


# Good example

class Developer < ProjectTeam
  attr_accessor :programming_language

  def initialize(programming_language)
    @programming_language = programming_language
  end

  def develop
    sprint.times do
      puts "Writing code using #{@programming_language}"
    end
  end

  def write_tests(tests = UnitTests.new)
    tests.write
  end
end

class UnitTests
  def write
    # Implementation for unit tests writing
  end
end

class IntegrationTests
  def write
    # Implementation for integration tests writing
  end
end

class FunctionalTests
  def write
    # Implementation for functional tests writing
  end
end
