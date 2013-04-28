project(Toqei)
 
find_package(KDE4 REQUIRED)
 
include(KDE4Defaults)
 
install(DIRECTORY package/
        DESTINATION ${DATA_INSTALL_DIR}/plasma/plasmoids/toqei)
 
install(FILES package/metadata.desktop
        DESTINATION ${SERVICES_INSTALL_DIR} RENAME plasma-applet-toqei.desktop) 
