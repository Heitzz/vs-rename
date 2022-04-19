FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build

LABEL "com.github.actions.name"="vs-rename"
LABEL "com.github.actions.description"="Visual studio project and solution file renamer"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/Heitzz/vs-rename"
LABEL "homepage"="https://github.com/Heitzz/vs-rename"
LABEL "maintainer"="Daniel"

RUN dotnet tool install ModernRonin.ProjectRenamer --tool-path .

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]