# ChatGPTSample

This is a sample project showcasing the capabilities of ChatGPT, an AI programming assistant. ChatGPT is designed to assist developers in generating code, providing solutions to programming problems, and offering guidance in software development tasks.

## Getting Started

To get started with this project, follow these steps:

1. Obtain API key file from OpenAI platform web site.
1. Clone this repository to your local machine.
1. Run `dotnet user-secrets init` command on the project directory.
1. Run `dotnet user-secrets set OPENAI_KEY "Issued API key"` command on the project directory.
1. Run the sample with `dotnet run` command and open the web brwoser to `http://localhost:5000`.

## Build and run container

You can use podman or docker to build and run the container.

1. `podman build -t chatgptsample:latest .`
1. `podman run --rm --name chatgptsample -d -e OPENAI_KEY="Issued API Key" -p 8080:8080 chatgptsample:latest`
1. `podman ps`
1. `podman stop chatgptsample`
