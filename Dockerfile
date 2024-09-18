FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
COPY . /source

WORKDIR /source
RUN dotnet publish -c release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app ./

EXPOSE 8080/tcp
ENTRYPOINT ["dotnet", "ChatGPTSample.dll"]
