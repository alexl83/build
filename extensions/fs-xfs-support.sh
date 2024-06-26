# `xfs` support is no longer included by default in prepare-host.sh.
# Enable this extension to include the required dependencies for building.
# This is automatically enabled if ROOTFS_TYPE is set to xfs in main-config.sh.

function extension_prepare_config__add_to_image_xfsprogs() {
	display_alert "Adding xfsprogs extra package..." "${EXTENSION}" "info"
	add_packages_to_image xfsprogs
}

function add_host_dependencies__add_xfs_tooling() {
	display_alert "Adding XFS to host dependencies" "XFS xfsprogs" "debug"
	EXTRA_BUILD_DEPS="${EXTRA_BUILD_DEPS} xfsprogs" # @TODO: convert to array later
}
