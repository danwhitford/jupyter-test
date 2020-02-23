FROM fsharp

# Copy notebooks

COPY ./notebooks/ ${HOME}/notebooks/

# Copy package sources

COPY ./NuGet.config ${HOME}/nuget.config

RUN chown -R ${USER}:${USER} ${HOME}
USER ${USER}

