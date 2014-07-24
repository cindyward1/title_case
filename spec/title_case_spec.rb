require("rspec")
require("title_case")

describe("title_case") do
  it("prints most words with the first letter capitalized") do
    title_case("christmas").should(eq("Christmas"))
  end

  it("prints excluded words in lowercase") do
    title_case("But").should(eq("But"))
  end

  it("prints excluded words in lowercase and other words in uppercase") do
    title_case("christmas IN JulY").should(eq("Christmas in July"))
  end
end
