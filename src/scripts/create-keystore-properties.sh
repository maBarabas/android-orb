#!/bin/bash

# RELEASE_KEY_ALIAS=$(eval echo "\$$PARAM_RELEASE_KEY_ALIAS")
# RELEASE_KEY_PASSWORD=$(eval echo "\$$PARAM_RELEASE_KEY_PASSWORD")
# RELEASE_STORE_PASSWORD=$(eval echo "\$$PARAM_RELEASE_STORE_PASSWORD")

RELEASE_KEY_ALIAS="${!PARAM_RELEASE_KEY_ALIAS}"
RELEASE_KEY_PASSWORD="${!PARAM_RELEASE_KEY_PASSWORD}"
RELEASE_STORE_PASSWORD="${!PARAM_RELEASE_STORE_PASSWORD}"

printf 'releaseKeyAlias=%s\nreleaseKeyPassword=%s\nreleaseKeyStore=%s\nreleaseStorePassword=%s' \
            "$RELEASE_KEY_ALIAS" "$RELEASE_KEY_PASSWORD" "${PARAM_RELEASE_KEYSTORE}" "$RELEASE_STORE_PASSWORD" > keystore.properties