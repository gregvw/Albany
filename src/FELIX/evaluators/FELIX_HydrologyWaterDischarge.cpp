//*****************************************************************//
//    Albany 2.0:  Copyright 2012 Sandia Corporation               //
//    This Software is released under the BSD license detailed     //
//    in the file "license.txt" in the top-level Albany directory  //
//*****************************************************************//

#include "PHAL_AlbanyTraits.hpp"

#include "FELIX_HydrologyWaterDischarge.hpp"
#include "FELIX_HydrologyWaterDischarge_Def.hpp"

PHAL_INSTANTIATE_TEMPLATE_CLASS_WITH_EXTRA_ARGS(FELIX::HydrologyWaterDischarge,true,false)
PHAL_INSTANTIATE_TEMPLATE_CLASS_WITH_EXTRA_ARGS(FELIX::HydrologyWaterDischarge,true,true)
PHAL_INSTANTIATE_TEMPLATE_CLASS_WITH_EXTRA_ARGS(FELIX::HydrologyWaterDischarge,false,false)
PHAL_INSTANTIATE_TEMPLATE_CLASS_WITH_EXTRA_ARGS(FELIX::HydrologyWaterDischarge,false,true)
