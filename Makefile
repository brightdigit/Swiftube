# Phony targets declaration for targets that don't represent files
.PHONY: openapi-spec openapi-types openapi-client mint-bootstrap
export MINT_PATH="$PWD/.mint"
MINT_ARGS=-n -m Mintfile --silent
MINT_CMD=MINT_PATH="$(PWD)/.mint" /opt/homebrew/bin/mint
MINT_RUN=${MINT_CMD} run ${MINT_ARGS}

all: openapi-code

mint-bootstrap:
	${MINT_CMD} bootstrap

Specs/youtube-data-3.0.yaml: 
	mkdir -p Specs
	curl https://raw.githubusercontent.com/APIs-guru/openapi-directory/refs/heads/main/APIs/googleapis.com/youtube/v3/openapi.yaml > Specs/youtube-data-3.0.yaml
	
openapi-spec: Specs/youtube-data-3.0.yaml
	
openapi-types: openapi-spec mint-bootstrap
	mkdir -p Sources/YouTubeDataOpenAPITypes
	${MINT_RUN} swift-openapi-generator generate --output-directory Sources/YouTubeDataOpenAPITypes --access-modifier public --mode types Specs/youtube-data-3.0.yaml
  
openapi-client: openapi-spec mint-bootstrap openapi-types
	mkdir -p Sources/YouTubeDataOpenAPIClient
	${MINT_RUN} swift-openapi-generator generate --additional-import YouTubeDataOpenAPITypes --output-directory Sources/YouTubeDataOpenAPIClient --access-modifier public --mode client Specs/youtube-data-3.0.yaml
	
openapi-code: openapi-types openapi-client

all: openapi-types openapi-client  