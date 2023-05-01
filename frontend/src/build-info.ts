const VERSION = 'DEBUG_VERSION';
const BUILD = 'DEBUG_BUILD';

export const BUILD_INFO = {
    VERSION, BUILD,
    BUILD_VERSION: `${VERSION} build ${BUILD}`,
    REQUEST_HEADER_KEY: 'build-version'
};
