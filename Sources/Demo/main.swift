import Commander

command(
  Option("name", default: "world"),
  Option("count", default: 1, description: "The number of times to print."),
  Option("version", default: "1.0.0")
) { name, count ,version in
    print(version)
  for _ in 0..<count {
    print("Hello \(name)")
  }
}.run()
