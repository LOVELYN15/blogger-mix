#Question 1
defmodule Blogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :blogger,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~>1.5"}
    ]
  end

  def fetch_blog() do
    case
    HTTPoison.get("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91") do
      {:ok,
    %HTTPoison.Response{status_code: 200, body:body}}->
      urls =
        body
        |>Blog.find("a.all-blogs__title-link")
        |BLOG.attribute("href")

        {:ok, urls}
        {:ok,
      %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :(" :error,
        %HTTPoison.Error{reason: reason} ->
          IO.inspect reason

    end
  end
  def
  get_blogs_html_body ({_,urls}) do
    urls
    |> Enum.map(fn url ->
      HTTPoison.get(url) end)
    |> Enum.map(fn {_,result} ->
      result.body end)
  end
end


#Question 2
input = ["cow", "goat", "sheep"]
upcase_input = String.upcase(input)
end

