alias Osteoporosis.Demo.OsteoporosisDemo
alias Osteoporosis.Demo.BasicPathway
alias Osteoporosis.Demo.TextRenderer
alias Osteoporosis.Demo.HtmlRenderer

pathways = BasicPathway.modules()

# demos = Enum.map(pathways, &OsteoporosisDemo.describe_fn/1)

html? = "--html" in System.argv()

output =
pathways
|> Enum.map(&OsteoporosisDemo.describe_fn/1)
|> then(fn demos ->
  if html? do
	HtmlRenderer.render(demos)
  else
	TextRenderer.render(demos)
  end
end)

if html? do
  File.mkdir_p!("demo/output")
  File.write!("demo/output/osteoporosis_demo.html", output)
  IO.puts("Wrote demo/output/osteoporosis_demo.html")
else
  IO.puts(output)
end

# output =
#   if html? do
# 	HtmlRenderer.render(demos)
# 	File.mkdir_p!("demo/output")
# 	File.write!("demo/output/osteoporosis_demo.html", output)
# 	IO.puts("Wrote demo/output/osteoporosis_demo.html")
#   else
# 	TextRenderer.render(demos)
# 	IO.puts(output)
#   end

# IO.puts(output)
# if html? do
#   File.mkdir_p!("demo/output")
#   File.write!("demo/output/osteoporosis_demo.html", output)
#   IO.puts("Wrote demo/output/osteoporosis_demo.html")
# else
#   IO.puts(output)
# end