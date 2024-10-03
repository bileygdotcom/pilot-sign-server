#syntax=docker/dockerfile:1
FROM pilotdev/hangar:1.4

LABEL project="Pilot-Sign-Server"\
      version="0.1.0" \
      mantainer="bileyg"\
      company="Ascon"
      
ENV ASPNETCORE_URLS=http://+:5000
COPY build /App/
WORKDIR /App
EXPOSE 9097
ENTRYPOINT dotnet ./Pilot.Sign.Server.dll
