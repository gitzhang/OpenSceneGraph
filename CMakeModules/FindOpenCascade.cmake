# LocateOPENCASCADE
# This module defines
# OPENCASCADE_LIBRARY
# OPENCASCADE_FOUND, if false, do not try to link to OPENCASCADE
# OPENCASCADE_INCLUDE_DIR, where to find the headers
#
# $OPENCASCADE_DIR is an environment variable that would
# correspond to the ./configure --prefix=$OPENCASCADE_DIR
# used in building OPENCASCADE.

FIND_PATH(OPENCASCADE_INCLUDE_DIR BRepMesh.hxx
  PATHS
    ${OPENCASCADE_DIR}
    $ENV{OPENCASCADE_DIR}
    ~/Library/Frameworks
    /Library/Frameworks
    /usr/local
    /usr
    /sw # Fink
    /opt/local # DarwinPorts
    /opt/csw # Blastwave
    /opt
    /usr/freeware
  PATH_SUFFIXES
    opencascade
    inc
    include
    inc/cascade
    include/cascade
)

MACRO(FIND_OPENCASCADE_LIBRARY MYLIBRARY MYLIBRARYNAME)

    FIND_LIBRARY("${MYLIBRARY}"
        NAMES "${MYLIBRARYNAME}"
        PATHS
        $ENV{OPENCASCADE_DIR}/lib}
        $ENV{OPENCASCADE_LIB}
        ${OPENCASCADE_DIR}/lib
        $ENV{OPENCASCADE_DIR}/lib
        ${OPENCASCADE_DIR}/lib/
        ~/Library/Frameworks
        /Library/Frameworks
        /usr/local/lib
        /usr/lib
        /sw/lib
        /opt/local/lib
        /opt/csw/lib
        /opt/lib
        /usr/freeware/lib64
        )

        MESSAGE("#Foundlibrary " ${${MYLIBRARY}})

ENDMACRO()



FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBinL TKBinL)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBin TKBin)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBinTObj TKBinTObj)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBinXCAF TKBinXCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBool TKBool)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBO TKBO)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKBRep TKBRep)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKCAF TKCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKCDF TKCDF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKDCAF TKDCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKDraw TKDraw)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKernel TKernel)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKFeat TKFeat)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKFillet TKFillet)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKG2d TKG2d)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKG3d TKG3d)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKGeomAlgo TKGeomAlgo)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKGeomBase TKGeomBase)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKHLR TKHLR)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKIGES TKIGES)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKLCAF TKLCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKMath TKMath)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKMesh TKMesh)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKMeshVS TKMeshVS)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKOffset TKOffset)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKOpenGl TKOpenGl)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKPrim TKPrim)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKQADraw TKQADraw)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKService TKService)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKShHealing TKShHealing)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKStdL TKStdL)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKStd TKStd)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKSTEP209 TKSTEP209)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKSTEPAttr TKSTEPAttr)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKSTEPBase TKSTEPBase)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKSTEP TKSTEP)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKSTL TKSTL)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKTObjDRAW TKTObjDRAW)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKTObj TKTObj)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKTopAlgo TKTopAlgo)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKTopTest TKTopTest)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKV3d TKV3d)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKVCAF TKVCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKViewerTest TKViewerTest)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKVRML TKVRML)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXCAF TKXCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXDEDRAW TKXDEDRAW)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXDEIGES TKXDEIGES)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXDESTEP TKXDESTEP)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXMesh TKXMesh)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXmlL TKXmlL)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXml TKXml)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXmlTObj TKXmlTObj)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXmlXCAF TKXmlXCAF)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXSBase TKXSBase)
FIND_OPENCASCADE_LIBRARY(OPENCASCADE_TKXSDRAW TKXSDRAW)


SET(OPENCASCADE_LIBRARY ${OPENCASCADE_LIBRARY}
    ${OPENCASCADE_TKernel}
    ${OPENCASCADE_TKMath}
    ${OPENCASCADE_TKXCAF}
    ${OPENCASCADE_TKXSBase}
    ${OPENCASCADE_TKSTEPAttr}
    ${OPENCASCADE_TKSTEPBase}
    ${OPENCASCADE_TKSTEP209}
    ${OPENCASCADE_TKSTEP}
    ${OPENCASCADE_TKXDESTEP}
    ${OPENCASCADE_TKIGES}
    ${OPENCASCADE_TKXDEIGES}
)

SET(OPENCASCADE_FOUND "NO")
IF(OPENCASCADE_LIBRARY AND OPENCASCADE_INCLUDE_DIR)
    SET(OPENCASCADE_FOUND "YES")
ENDIF(OPENCASCADE_LIBRARY AND OPENCASCADE_INCLUDE_DIR)

IF(OPENCASCADE_INCLUDE_DIR)
    SET(OPENCASCADE_FOUND "YES")
ENDIF(OPENCASCADE_INCLUDE_DIR)
