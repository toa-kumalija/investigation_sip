#!/bin/sh

cd @ep_build@

cmake @ep_source@ \
	-DCMAKE_BUILD_TYPE=@CMAKE_BUILD_TYPE@ \
	-DCPACK_PACKAGE_NAME=@LINPHONE_BUILDER_RPMBUILD_PACKAGE_PREFIX@@LINPHONE_BUILDER_RPMBUILD_NAME@ \
	-DBC_PACKAGE_NAME_PREFIX=@LINPHONE_BUILDER_RPMBUILD_PACKAGE_PREFIX@ \
	-DCMAKE_INSTALL_PREFIX=@RPM_INSTALL_PREFIX@ \
	-DCMAKE_PREFIX_PATH=@RPM_INSTALL_PREFIX@ \
	-DENABLE_PACKAGE_SOURCE=ON \
	@CURRENT_PROJ_CMAKE_OPTIONS@
make package_source
