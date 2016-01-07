defmodule PdfGenerator.Mixfile do
  use Mix.Project

  def project do
    [
      app: :pdf_generator,
      name: "PDF Generator",
      version: "0.2.1",
      elixir: ">= 1.0.0",
      deps: deps,
      description: description,
      package: package
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications:
        [
            :logger,
            :porcelain
        ]
    ]
  end

  def description do
    """
    A simple wrapper for wkhtmltopdf (HTML to PDF) and PDFTK (adds in encryption) for use in Elixir projects.
    """ 
  end


  defp package do
    [
     files: ["lib", "mix.exs", "README", "LICENSE", "test"], 
     maintainers: ["Martin Gutsch"],
     licenses: ["MIT"],
     links: %{
        "GitHub" => "https://github.com/gutschilla/elixir-pdf-generator"
      }
     ]
  end

  defp deps do
    [
        # communication with external programs
        {:porcelain, "~> 2.0"},
        # a helper
        {:random, github: "gutschilla/elixir-helper-random", tags: "0.2.4" },
        # generate docs
        {:earmark, "~> 0.1", only: :dev},
        {:ex_doc, "~> 0.7", only: :dev}
    ]
  end
end
