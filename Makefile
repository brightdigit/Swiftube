# Phony targets declaration for targets that don't represent files
.PHONY: openapi-spec openapi-types openapi-client
export MINT_PATH="$PWD/.mint"
MINT_ARGS=-n -m Mintfile --silent
MINT_RUN=MINT_PATH="$(PWD)/.mint" /opt/homebrew/bin/mint run ${MINT_ARGS}

Specs/youtube-data-3.0.yaml: 
	mkdir -p Specs
	curl https://raw.githubusercontent.com/APIs-guru/openapi-directory/refs/heads/main/APIs/googleapis.com/youtube/v3/openapi.yaml > Specs/youtube-data-3.0.yaml
	
openapi-spec: Specs/youtube-data-3.0.yaml
	
openapi-types: openapi-spec
	mkdir -p Sources/YoutubeDataOpenAPITypes
	${MINT_RUN} swift-openapi-generator generate --output-directory Sources/YoutubeDataOpenAPITypes --access-modifier public --mode types Specs/youtube-data-3.0.yaml
  
openapi-client: openapi-spec
	mkdir -p Sources/YoutubeDataOpenAPIClient
	${MINT_RUN} swift-openapi-generator generate --output-directory Sources/YoutubeDataOpenAPIClient --access-modifier public --mode client Specs/youtube-data-3.0.yaml
	
all: openapi-types openapi-client
  