FROM bitwalker/alpine-elixir-phoenix:latest

WORKDIR /app

ADD mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

ADD priv ./
#COPY assets/package.json assets
#COPY assets/package-lock.json assets

CMD mix phx.server